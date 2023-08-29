public with sharing class LookUpController {
    
    
    @AuraEnabled(cacheable=true)
    public static List<Course__c> getCourses(){
        return [SELECT id, Course_Name__c, Course_Start_Date__c, Course_Last_Date__c FROM Course__c]; 
    }


    @AuraEnabled(cacheable=true)
    public static List<Event__c> getEvents(){
        return [SELECT id, Event_Name__c, Event_Start_Date__c, Event_End_Date__c FROM Event__c]; 
    }


}