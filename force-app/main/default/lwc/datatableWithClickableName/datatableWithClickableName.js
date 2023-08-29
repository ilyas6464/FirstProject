import { LightningElement, wire } from "lwc";
import getAccountWithAnnualRevenue from "@salesforce/apex/AccountController.getAccountWithAnnualRevenue";

const COLS = [
  // Define columns for the datatable
  {
    label: "Account Name",
    fieldName: "recordLink",
    type: "url",
    typeAttributes: {
      label: { fieldName: "Name" },
      target: "_blank"
    }
  },
  { label: "Annual Revenue", fieldName: "AnnualRevenue" , type:"currency"}
];

export default class DatatableWithClickableName extends LightningElement {
  columns = COLS;

  accounts;
  error;

  @wire(getAccountWithAnnualRevenue)
  wiredContacts({ data, error }) {
    if (data) {
      console.log(data);
      // this.accounts = data;
      // in data array ,
      // add one more field to each object
      // with name recordLink and value "/theRecordId"
      // the url will navigate directly to record page with that id
      this.accounts = data.map((account) => {
        return {
          ...account,
          recordLink : "/"+account.Id
        };
      });
      this.error = undefined;
    } else if (error) {
      this.error = error;
      this.accounts = undefined;
    }
  }
}