import getAccountWithAnnualRevenue from "@salesforce/apex/AccountController.getAccountWithAnnualRevenue";
import { LightningElement, wire } from "lwc";

const COLS = [
    {
        label: "Account Name",
        fieldName: "recordLink",
        type: "url",
        typeAttributes: {
          label: { fieldName: "Name" },
          target: "_blank"
        }
      },
    { label: 'Annual Revenue', fieldName: 'AnnualRevenue', type: 'currency' }
];
 

export default class Review1Datatable extends LightningElement {


    accounts; // hold the wired data 
    error; // hold error if there is any
    columns = COLS; 

    @wire(getAccountWithAnnualRevenue)
    theDataFromApex({ data, error}){
        
        if (data) {
            this.accounts = data.map(each => 
                ({...each , recordLink: "/"+each.Id } )
            ); 

            this.error = undefined; 
            console.log(data); 
        } else if (error) {
            this.data = undefined; 
            this.error = error; 
        }


    }


}


/**

[
    {Name: 'GenePoint', AnnualRevenue: 30000000, Active__c: 'Yes'},
    {Name: 'Edge Communications', AnnualRevenue: 139000000, Active__c: 'Yes'},
    {Name: 'Burlington Textiles Corp of America', AnnualRevenue: 350000000, Active__c: 'Yes'}
]

[
    {Name: 'ABC GenePoint', AnnualRevenue: 30000000, Active__c: 'Yes'},
    {Name: 'ABC Edge Communications', AnnualRevenue: 139000000, Active__c: 'Yes'},
    {Name: 'ABC Burlington Textiles Corp of America', AnnualRevenue: 350000000, Active__c: 'Yes'}
]

*/