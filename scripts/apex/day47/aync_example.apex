// System.debug('Drink coffee'); 
// System.debug('clean up'); 

// AsyncUtil.boilWater();

// System.debug('Chop the onion'); 
// System.debug('sit back and relax'); 
// System.debug('Continue to cook'); 

//  Turn off your lead trigger for now!


//  Have some data to woek on to simulate large data volume situatuion
//  prepare lead data,  insert 1000 leads

// List<Lead> myLeads = Utils.getLeads('Jon Snow', 'NightWatch Inc',true, 1000); 
// System.debug('myLeads.size()  value is : ' + myLeads.size() );

MyLeadBatchProcessor mlp = new MyLeadBatchProcessor(); 
// use executeBatch method of Database class 
// to provide instance of Batchable 
// (object from Class that implemented Database.Batchable) 
// and provide batch size, if not provided default is 200 
// so it can fill up the `records` variable of execute method with that many records per batch
// each batch get it's own governor limit 
Database.executeBatch(mlp, 150) ; 


