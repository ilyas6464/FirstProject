/**
Create an empty List of Lead
   - use for loop to go through 10 iteration 
   - add lead with FirstName, LastName, Company fields filled up as below
     
   'Test Lead FN 1' ,'Test Lead LN 1' , 'Company 1'
   'Test Lead FN 2' ,'Test Lead LN 2' , 'Company 2'
   ....
   'Test Lead FN 10' ,'Test Lead LN 10' , 'Company 10'
   insert the list into your org
 */
 List<Lead> leadList = new List<Lead>();
 
 for(Integer i=1; i<=10 ;i++) {

    //Test Lead FN 1 , Test Lead LN 1 ,Company 1
    Lead ld = new Lead(FirstName = 'Test Lead FN '+i, LastName = 'Test Lead LN' +i, Company ='Company 1'+i);
    
    // add it to the list
    leadList.add(ld);
 }
 System.debug('leadList value is : ' + leadList); 
 insert leadList;
 //Database.insert();
  System.debug('leadList value After insert is : ' + leadList); 

  /*
List <Lead> leadsToDelete = [SELECT ID FROM Lead WHERE FirstName LIKE 'Test%'];
System.debug('leads to delete size: ' + leadsToDelete.size()); 
delete leadsToDelete;
*/
