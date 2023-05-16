public with sharing class BillingCityChange implements Database.Batchable<sObject> {


    public Database.QueryLocator start(Database.BatchableContext bc){

   return Database.getQueryLocator('Select Id, BillingCity,BillingState(Select Id, MailingCity, MAilingState from Contacts) From Account Where BillingCountry = \'USA\' ');

    }
    public void execute(Database.BatchableContext bc, List<Account> accList){
       List<Contact> conList  = new List<Contact>();
        for(Account each : accList){
            for(Contact eachCon : each.Contacts){
               //eachCon.AccountId = each.Id ;
               eachCon.MailingCity = each.BillingCity;
               eachCon.MailingState = each.BillingState;

               conList.add(eachCon) ;
            }

         update conList ;
        }
    }

        public void finish(Database.BatchableContext bc){}


}