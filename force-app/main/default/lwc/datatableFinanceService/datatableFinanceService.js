import { LightningElement, wire } from "lwc";
import { NavigationMixin } from "lightning/navigation";
import getFinancialServicesAccounts from "@salesforce/apex/AccountControllerScnd.getFinancialServicesAccounts";
import { updateRecord, deleteRecord } from "lightning/uiRecordApi";
import { ShowToastEvent } from "lightning/platformShowToastEvent";
import { refreshApex } from "@salesforce/apex";

const columns = [
  {
    label: "Account Name",
    fieldName: "LinkedName",
    // type: "text",
    sortable: true,
    editable: true,
    type: 'url',
    typeAttributes: { label: { fieldName: "Name" },  target: "_blank" }  
  },
  {
    label: "Account Owner",
    fieldName: "OwnerName",
    type: "text",
    sortable: true
  },
  { label: "Phone", fieldName: "Phone", type: "phone", editable: true },
  { label: "Website", fieldName: "Website", type: "url", editable: true },
  {
    label: "Annual Revenue",
    fieldName: "AnnualRevenue",
    type: "currency",
    editable: true
  },
  {
    type: "action",
    typeAttributes: {
      rowActions: [
        { label: "View", name: "view" },
        { label: "Delete", name: "delete" }
      ]
    }
  }
];

export default class DatatableFinanceService extends NavigationMixin(
  LightningElement
) {
    // refreshApex works only on Wired Result 
    wiredResult;
    // data from wired result
    accounts = [];
    //error from wired result
    error;
    // datatable columns 
    columns = columns;
    // search box search item
    searchKey = "";
    // the values user editing in in line edit
    draftValues = [];

    // sort field
    sortField = "";
    // direction 
    sortDirection = "asc";

  @wire(getFinancialServicesAccounts)
  wiredTheFinanceAccounts(result) {
    this.wiredResult = result;
    const { data, error } = result;
    if (data) {
      console.log(data);
      // this.accounts = data;
        // need to extract name from Owner from the result
        
      this.accounts = data.map((account) => {
        return {
          ...account,
          LinkedName: "/" + account.Id, 
          OwnerName: account.Owner.Name
        };
      });
      this.error = undefined;
    } else if (error) {
      this.error = error;
      this.account = undefined;
    }
  }
  // search box two way data-binding
  handleSearch(event) {
    this.searchKey = event.target.value.toLowerCase();
  }

    // getter for filtered account by name so we can do filter on client side instead of server side
  get filterAccounts() {
    return this.accounts.filter((account) =>
      account.Name.toLowerCase().includes(this.searchKey)
    );
  }
    // getter to check if we the filtered result is empty
    get emptyResult() {
        return this.filterAccounts && this.filterAccounts.length=== 0; 
    }
    
  // function to handle inline save fpr datatable 
  handleSave(event) {
    console.log(JSON.stringify(event.detail.draftValues, null, 2));
    // Convert datatable draft values into record objects
    // so it can be passed to updateRecord LDS function
    const records = event.detail.draftValues.map((each) => ({
      fields: { ...each }
    }));
    console.log(JSON.stringify(records, null, 2));

    // Clear all datatable draft values
    this.draftValues = [];
    const recordUpdatePromises = records.map((each) => updateRecord(each));
    // Fire all promises to run the updates in parallel
    Promise.all(recordUpdatePromises)
      .then(() => {
        // Report success with a toast
        this.showSuccessToast("Successfully edited the accounts");
        // Display fresh data in the datatable
        refreshApex(this.wiredResult);
      })
      .catch((error) => {
        console.log(error);
        this.showErrorToast(error.body.message);
      });
  }

  // method to react to the dropdown button clicks in datatable
  handleRowAction(event) {
    // get the action name
    const actionName = event.detail.action.name;
    console.log(actionName);
    // get the row data
    const rowData = event.detail.row;
    console.log(rowData);

    if (actionName === "view") {
      // navigate to the record page
      this.navigateToAccountRecordPage(rowData.Id);
    } else if (actionName === "delete") {
      // delete the record
      console.log("deleting the record ");
      this.deleteTheRow(rowData.Id);
    }
  }

  // create a function to navigate to record if recordId is provided
  navigateToAccountRecordPage(recordId) {
    this[NavigationMixin.Navigate]({
      type: "standard__recordPage",
      attributes: {
        actionName: "view",
        recordId: recordId,
        objectApiName: "Account"
      }
    });
  }

  deleteTheRow(recordIdToDelete) {
    // using lds adaptor function
    deleteRecord(recordIdToDelete)
      .then(() => refreshApex(this.wiredResult))
      .catch((error) => this.showErrorToast('Failed to delete the record ' + error));
  }

  // Show success toast message
  showSuccessToast(message) {
    this.dispatchEvent(
      new ShowToastEvent({
        title: "Success",
        message: message,
        variant: "success"
      })
    );
  }

  // Show error toast message
  showErrorToast(message) {
    this.dispatchEvent(
      new ShowToastEvent({
        title: "Error",
        message: message,
        variant: "error"
      })
    );
  }

  handleSort(event) {
    const { fieldName } = event.detail;
    if (this.sortField === fieldName) {
      this.sortDirection = this.sortDirection === "asc" ? "desc" : "asc";
    } else {
      this.sortField = fieldName;
      this.sortDirection = "asc";
    }
    this.sortData();
  }

  sortData() {
    let reverse = this.sortDirection === "asc" ? 1 : -1;
    let fieldName = this.sortField;
    this.accounts = [...this.accounts].sort(
      (a, b) => (a[fieldName] > b[fieldName] ? 1 : -1) * reverse
    );
  }
}