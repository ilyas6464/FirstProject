public with sharing class ContactController {


    // make the method available for lwc using @AuraEnabled(cacheable=true)
    @AuraEnabled(cacheable=true)
    public static List<Contact> get10ContactsWithPhone(){

        // Integer i = 10/0 ; uncomment to see error in lwc

        return [SELECT FirstName, Phone from Contact
                WHERE Phone !=null  LIMIT 10]; 

    }



}