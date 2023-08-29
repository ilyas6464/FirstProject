import { LightningElement, wire ,api} from "lwc";
import getContacts from "@salesforce/apex/ContactController.getContacts";

const COLS = [
  // Define columns for the datatable
  { label: "First Name", fieldName: "FirstName" },
  { label: "Last Name", fieldName: "LastName"},
  { label: "Title", fieldName: "Title"},
  { label: "Phone", fieldName: "Phone"},
  { label: "Email", fieldName: "Email"}
];


export default class DatatableWithInlineEdit extends LightningElement {
  columns = COLS;
  draftValues = [];

  @wire(getContacts)
  contacts;

  @api
  pageSize = 3;
  pageNumber = 1; 

  get totalItemCount() {
    return this.contacts.data ? this.contacts.data.length : 0;
  }

  get visibleContacts() {
    const startIndex = (this.pageNumber - 1) * this.pageSize;
    const endIndex = startIndex + this.pageSize;
    return this.contacts.data ? this.contacts.data.slice(startIndex, endIndex) : [];
  }

  handleChildPrevious() {
    this.pageNumber--; 
  }
  
  handleChildNext() {
    this.pageNumber++;
  }

}