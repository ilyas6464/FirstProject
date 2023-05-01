/**
Upsert uses the sObject record's primary key (the ID), an idLookup field, or an external ID field to determine whether it should create arecord or update an existing one:
If the key isn’t matched, a new object record is created.
If the key is matched once, the existing object record is updated.
If the key is matched multiple times, an error is generated and the object record isn’t inserted or updated
   */

/**
We created a Custom Object as below

Create Custom Object
   Vehicle 
        Name field make it auto number 
        In this format V-{000}
   Fields 
          Year as a number 
        Model as text 
          Make as text 
          Price as currency
Now we need to access here in VSCode
Go to command palate and type
SFDX : Refresh Object Definition
select All Object
now you have access to latest changes you made under Object Manager
 */
 Vehicle__c v1  = new Vehicle__c();
 v1.Year__c     = 2023 ;
 v1.Make__c     ='Tesla';
 v1.Model__c    ='Model X';
 v1.Price__c    = 127000;
 System.debug('v1 value is : ' + v1); 
 insert v1;
  System.debug('v1 value After is : ' + v1); 

  // Create List of Vehicle and insert in bulk

  List<Vehicle__c> carList = new   List<Vehicle__c>();
  
// update the price to 100 add v1 into this list
v1.Price__c = 100000;
carList.add(v1);

// add 2 more vehicle_c with make  filled up
carList.add(new Vehicle__c(Make__c = ' Lucid' ) );
carList.add(new Vehicle__c(Make__c = ' Toyota' ) );
System.debug('carList value is : ' + carList); 
  //insert  what's not already in Salesforce
  //adn update what is already in Salesforce
  //from this list into Salesforce
  //upsert DML operation: update + insert
  upsert carList;

  