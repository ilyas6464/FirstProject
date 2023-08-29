import { LightningElement, wire } from "lwc";
import getContacts from "@salesforce/apex/ContactController.getContacts";
import { updateRecord } from "lightning/uiRecordApi";
import { ShowToastEvent } from "lightning/platformShowToastEvent";
import { refreshApex } from "@salesforce/apex";

const COLS = [
  // Define columns for the datatable
  { label: "First Name", fieldName: "FirstName", editable: true },
  { label: "Last Name", fieldName: "LastName", editable: true },
  { label: "Title", fieldName: "Title", editable: true },
  { label: "Phone", fieldName: "Phone", type: "phone", editable: true },
  { label: "Email", fieldName: "Email", type: "email", editable: true }
];

export default class DatatableWithInlineEdit extends LightningElement {
  columns = COLS;
  draftValues = [];

  @wire(getContacts)
  contacts;

  handleSave(event) {
    // this is how you can access the user update in edit mode
    // event.detail.draftValues
    // check out the console to see the formatted print
    console.log(JSON.stringify(event.detail.draftValues, null, 2));
    // Convert datatable draft values into record objects
    // so it can be passed to updateRecord LDS function
    const records = event.detail.draftValues.map((each) => ({
      fields: { ...each }
    }));
    console.log(JSON.stringify(records, null, 2));

    // Clear all datatable draft values
    this.draftValues = [];

    // Update all records in parallel using LDS function updateRecord
      // updateRecord is async operation and return promise( async result)
      // and will not be fired until .then is called
      // map method is taking each item and returning future result
      // so it can be executed in parallel using the upcoming line
    const recordUpdatePromises = records.map(each => updateRecord(each) );
    // Fire all promises to run the updates in parallel
    Promise.all(recordUpdatePromises)
      .then(() => {
        // Report success with a toast
        this.showSuccessToast("Successfully edited the contacts");
        // Display fresh data in the datatable
        refreshApex(this.contacts);
      })
      .catch((error) => {
        console.log(error);
        this.showErrorToast(error.body.message);
      });
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
}

// event.detail.draftValues comes in this format 
/**
 [
  {
    "Title": "Helloe",
    "Id": "0038c000037gfvVAAQ"
  },
  {
    "LastName": "There",
    "Id": "0038c00002txLjPAAU"
  }
]
 */
// updateRecord lds function is expecting below format to update record 
/**
{
  "fields": {
      "Title": "Hello",
      "Id": "0038c000037gfvVAAQ"
  }
}

// that's why we need to transform first array to below format

[
  {
    "fields": {
      "Title": "Hello",
      "Id": "0038c000037gfvVAAQ"
    }
  },
  {
    "fields": {
      "LastName": "There",
      "Id": "0038c00002txLjPAAU"
    }
  }

]
 */