import { LightningElement, api, wire } from 'lwc';
import getAllCases from '@salesforce/apex/caseController.getAllCases';
import getCases from '@salesforce/apex/caseController.getCases';

export default class CasesApex extends LightningElement {

    /* @wire(getAllCases)
    cases; */

    @api recordId;

    @wire(getCases, {conId: '$recordId'})
    cases;

}