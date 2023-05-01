/**
Create a Lead with required Fiemyleads filled up 
   - insert it into your org 
   - Create a variable with Task sObject type and assign the value 
   - fill up the below fiemyleads for this task
      - WhoId with the Id of the lead created above 
      - Priority 'High'
      - ActivityDate  Date 7 days from now 
 */

 Lead mylead = new Lead(LastName = 'Skywalker',company = 'Galactic Empire');
 System.debug('mylead value before is : ' + mylead); 
 insert mylead;
 System.debug('mylead value After is : ' + mylead); 

Task t1         = new Task();
t1.WhoId        = mylead.Id;
t1.Priority     ='High';
t1.ActivityDate = Date.today()+7;// do same thing as addDays(7)
t1.Subject      ='Task for lead from Apex';
//insert this task into SF org
insert t1;


System.debug('------------------------------------------------');

Lead lead1 = new Lead(LastName = 'Young');
lead1.Company = 'Avengers Coop.';
lead1.Status = 'Working - Contacted';

insert lead1;

Task taskLead1 = new Task();
taskLead1.WhoId = lead1.Id;
taskLead1.Priority = 'High';
taskLead1.ActivityDate = Date.today().addDays(7);     
taskLead1.Subject = 'Follow up ' + lead1.Company;

insert taskLead1;








