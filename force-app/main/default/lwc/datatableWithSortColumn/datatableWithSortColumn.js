import { LightningElement, wire } from "lwc";
import getContacts from "@salesforce/apex/ContactController.getContacts";

const COLS = [
  // Define columns for the datatable
  { label: "First Name", fieldName: "FirstName", sortable: true },
  { label: "Last Name", fieldName: "LastName", sortable: true },
  { label: "Title", fieldName: "Title", sortable: true }
];

export default class DatatableWithSortColumn extends LightningElement {
  columns = COLS;

  contacts;
  error;

  sortField = "";
  sortDirection = "asc";

  @wire(getContacts)
  wiredContacts({ data, error }) {
    if (data) {
      this.contacts = data;
      this.error = undefined;
    } else if (error) {
      this.error = error;
      this.contacts = undefined;
    }
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
    this.contacts = [...this.contacts].sort((a, b) =>
      (a[fieldName] > b[fieldName] ? 1 : -1) * reverse
    );
  }
    
}