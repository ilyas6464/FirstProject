public with sharing class ReviewJokeController {


    @AuraEnabled(cacheable=true)
    public static String getJoke(){
      
        // ASSUMIMNG AFTER MAKING A REST API CALL OUT WE GOT THE RESULT OF 
        // THE JOKE AND RETURNED IN STRING AS BELOW 
        return 'Super Fun from Apex';

    }


}