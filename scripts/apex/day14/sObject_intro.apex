/**

sObject , Salesforce Object Type as Data typeis the type represent SalesForce records Every object type you see
under object type you see under Object manager of setting in your organization 

 */
 
 
 // Creating variable with Account sObject type 
 // and assign value 
 Account a1 = new Account(); 
 // this is how we can set field value 
 a1.Name = 'Cydeo'; 
 a1.AnnualRevenue = 1000000.85 ; 
 a1.BillingCity = 'Vienna' ; 
 a1.BillingState = 'VA'; 
//you can directly print it out and it will show nice format
System.debug('a1 value is : ' + a1); 
//a1 value is : Account:{Name=Cydeo, AnnualRevenue=100000.85, BillingCity=Vianna , BillingState=Va}

// how do we read the value of those field
// print out Name and BillingState field value

System.debug('a1.Name value is : ' + a1.Name); 
System.debug('a1.BillingState value is : ' + a1.BillingState); 
// a1.Name value is : Cydeo
// a1.BillingState value is : Va

// Change the value of AnnualRevenue to 1000000000.00
a1.AnnualRevenue =  1000000000.00 ;
System.debug('a1.AnnualRevenue value is : ' + a1.AnnualRevenue); 
//a1.AnnualRevenue value is : 1000000000.00

// here is the shortcut of creating sObject Acoount instance  with field value

// create 3 Account with these name Apple ,Google, Microsoft
Account a2 = new Account( Name = 'Apple' );
System.debug('a2 value is : ' + a2);  
//a2 value is : Account:{Name=Apple}

//create a google Account with Name and AnnualRevenue filled up
Account a3 = new Account(Name = 'Google',AnnualRevenue = 23423423423.0);
System.debug('a3 value is : ' + a3); 
//a3 value is : Account:{Name=Google, AnnualRevenue=23423423423.0}

Account a4 = new Account(Name = 'Microsoft');
System.debug('a4 value is : ' + a4); 
// a4 value is : Account:{Name=Microsoft}

// insert a1;
// insert a2;
// insert a3;
// insert a4;