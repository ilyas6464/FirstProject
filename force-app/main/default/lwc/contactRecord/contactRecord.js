import { LightningElement, api } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Contact.Name';
import ACCOUNT_FIELD from '@salesforce/schema/Contact.AccountId';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';

export default class ContactRecord extends LightningElement {

    @api objectApiName;

    fields = [NAME_FIELD, ACCOUNT_FIELD, TITLE_FIELD];

    @api recordId;

}