trigger Account on Account (after insert) {
    //Creates the number of contacts which are equal to the number which we will enter 
    //in the Number of Locations field on the Account Object.
    
    //Create Custom field called “Number of Locations” on the Account Object 
    //(Data Type=Number)
    List<Contact> conList = new List<Contact>();
    for(Account each : Trigger.new){
    if( each.NumberofLocations__c>0 ){
        for(Integer i=1; i<=each.NumberofLocations__c ;i++) {
    Contact c1 = new Contact();
    c1.LastName = 'Contact Class' + i ; 
    c1.AccountId = each.Id ;
    conList.add(c1);
        }
    }
    }
     insert conList ;
    
    }