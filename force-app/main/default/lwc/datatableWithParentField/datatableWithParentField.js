import { LightningElement, wire } from "lwc";
import getContacts from "@salesforce/apex/ContactController.getContacts";

const COLS = [
  // Define columns for the datatable
  { label: "First Name", fieldName: "FirstName" },
  { label: "Last Name", fieldName: "LastName" },
  { label: "Title", fieldName: "Title" },
  { label: "Owner", fieldName: "OwnerName" }
];

export default class DatatableWithParentField extends LightningElement {
  columns = COLS;

  contacts;
  error;

  @wire(getContacts)
  wiredContacts({ data, error }) {
    if (data) {
      console.log(data);
        // this.contacts = data;
        this.contacts = data.map(contact => {
            return {...contact, OwnerName: contact.Owner.Name}
        })
      this.error = undefined;
    } else if (error) {
      this.error = error;
      this.contacts = undefined;
    }
  }
}