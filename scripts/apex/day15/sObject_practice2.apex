// Create a opportunity variable and assign its value
// fill up below fields
// Name, CloseDate,StateName,
Opportunity o1 = new Opportunity(); 
o1.Name = 'Opp 1 from Apex' ; 
o1.StageName = 'Closed Won'; 
o1.CloseDate = Date.today() ; 

System.debug('o1 value is : ' + o1); 

Opportunity o2 = new Opportunity(); 
o2.Name = 'Opp 2 from Apex' ; 
o2.StageName = 'Closed Won'; 
o2.CloseDate = Date.today() ; 

// Create a List of Opportunity and add above 2 items
List<Opportunity> opps = new List<Opportunity>{o1,o2};
System.debug('opps value is : ' + opps); 
//opps value is : (Opportunity:{Name=Opp 1 from Apex, StageName=Closed Won, CloseDate=2023-02-24 00:00:00}, Opportunity:{Name=Opp 2 from Apex, StageName=Closed Won, CloseDate=2023-02-24 00:00:00})

// insert these opps into Salesforce
insert opps;