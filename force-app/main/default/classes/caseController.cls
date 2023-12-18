public with sharing class caseController {

    @AuraEnabled(cacheable=true)
    public static List<Case> getAllCases(){

        return [SELECT Id, ContactId, CaseNumber, Reason, Status 
                FROM Case
                ];
    }

    @AuraEnabled(cacheable=true)
    public static List<Case> getCases(String conId){

        return [SELECT Id, ContactId, CaseNumber, Reason, Status 
                FROM Case
                WHERE ContactId =: conId
                ];
    }


}