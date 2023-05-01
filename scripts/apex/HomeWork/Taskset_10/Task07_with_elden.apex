/* 
7. Create an Opportunity variable and assign the value with required fields set 
   - Name , ClosedDate , StageName
   - if ClosedDate is over 3 months (use monthsBetween method) and StageName is not Closed Won 
      - update the StageName value to Closed Lost 
   - Create a String List called stageNames and 11 stage in Opportunity picklist
   - Create a String variable called selectedStageName
      - assign the value to a random item from above List of 10 item (from index 0-9)
   - Create another Opportunity instance with below fields
      - Name , ClosedDate , StageName(assign using selectedStageName)
   -  if ClosedDate is over 3 months and StageName is not Closed Won 
      - update the StageName value to Closed Lost 
 */

Opportunity opp1 = new Opportunity(
  Name = ' The Best opportunity',
  CloseDate = Date.newInstance(2022, 4, 9),
  StageName = 'Prospecting'
);

insert opp1;

if (
  opp1.CloseDate.monthsBetween(Date.today()) > 3 &&
  opp1.StageName != 'Closed Won'
) {
  opp1.StageName = 'Closed Lost';
}

System.debug('opp1 value is : ' + opp1);

List <String> stageNames = new List <String> {
         'Prospecting',
         'Qualification',
         'Needs Analysis',
         'Value Proposition',
         'Id. Decision Makers',
         'Perception Analysis',
         'Proposal/Price Quote',
         'Negotiation/Review',
         'Closed Won',
         'Closed Lost'
};

String selectedStageName = stageNames.get(Math.round(Math.random()*9));

System.debug('selectedStageName value is : ' + selectedStageName); 


Opportunity opp2 = new Opportunity(
  Name = ' The Worst opportunity',
  CloseDate = Date.newInstance(2022, 2, 9),
  StageName = 'Closed Lost'
);

insert opp2;

if (
  opp2.CloseDate.monthsBetween(Date.today()) > 3 &&
  opp2.StageName != 'Closed Won'
) {
  opp2.StageName = 'Closed Lost';
}

System.debug('opp2 value is : ' + opp2);
 
//delete [SELECT Id from Opportunity Where CreatedDate = TODAY] ;
