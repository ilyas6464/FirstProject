public with sharing class ContactController {
    
    @AuraEnabled(cacheable=true)
    public static Contact getOneContact(){
       
        return [SELECT Id,Name From Contact LIMIT 1];

    }
    
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts() {
        return [SELECT Id, FirstName, LastName, Title, Phone, Email , Owner.Name
        FROM Contact
        ORDER BY CreatedDate Desc
        LIMIT 10 ];
    }



}