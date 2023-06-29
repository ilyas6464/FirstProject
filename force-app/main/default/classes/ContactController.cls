public with sharing class ContactController {
    
    @AuraEnabled(cacheable=true)
    public static Contact getOneContact(){
       
        return [SELECT Id,Name From Contact LIMIT 1];

    }


}