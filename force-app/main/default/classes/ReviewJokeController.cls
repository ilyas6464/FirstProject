public with sharing class ReviewJokeController {


    @AuraEnabled//(cacheable=true)
    public static String getJoke(){
      
        // ASSUMIMNG AFTER MAKING A REST API CALL OUT WE GOT THE RESULT OF 
        // THE JOKE AND RETURNED IN STRING AS BELOW 
        //return 'Awesome Fun from Apex ' + Math.random();
        // Add     https://icanhazdadjoke.com to remote site setting 
        // create object from HTTP class
        Http h = new Http() ; 
        // create httpRequet object and provide url , method, header
        HttpRequest req = new HttpRequest(); 
        req.setEndpoint('https://icanhazdadjoke.com'); 
        req.setMethod('GET'); 
        req.setHeader('Accept', 'text/plain'); 
        // send this request using Http object you created before and save the result 
        // into HTTPResponse object 
        HttpResponse res = h.send(req) ; 
        
        System.debug('res.getBody()  value is : ' + res.getBody() );
        
        return res.getBody() ; 

    }


}