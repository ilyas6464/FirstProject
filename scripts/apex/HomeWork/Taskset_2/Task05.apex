// **# Tasks Set 2** : 

// 5. Write and Apex code that store `opportunityStage` as **String** and `probabilityPercentage` as **Decimal**  
String opportunityStage = 'Need Analysis' ; 
Decimal probabilityPercentage  ; 
//    - if the stage is 'Prospecting', assign the value of `probabilityPercentage` to `0.1`
//    - if the stage is 'Qualification', assign the value of `probabilityPercentage` to `0.2`
//    - if the stage is 'Need Analysis', assign the value of `probabilityPercentage` to `0.3`
//    - if the stage is 'Closed Won', assign the value of `probabilityPercentage` to `1.0`
//    - if the stage is 'Closed Lost', assign the value of `probabilityPercentage` to `0`
switch on opportunityStage {
   when 'Prospecting' {
      probabilityPercentage = 0.1 ; 
   }
   when 'Qualification' {
     probabilityPercentage = 0.2 ; 
   }
   when 'Need Analysis' {
      probabilityPercentage = 0.3 ; 
   }
   when 'Closed Won' {
      probabilityPercentage = 1.0 ; 
   }
   when 'Closed Lost' {
      probabilityPercentage = 0 ; 
   }
}

//    - at the end Print out message 'Stage is X and probability Percentage is X %'
System.debug('Stage is '+opportunityStage
            +' and probability Percentage is '+( probabilityPercentage*100 )+' %'); 
            //Stage is Need Analysis and probability Percentage is 30.0 %