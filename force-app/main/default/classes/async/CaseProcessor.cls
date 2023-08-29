public class CaseProcessor implements Database.Batchable<sObject>, Database.Stateful {

    Integer totalProcessed = 0 ; 

    public Database.QueryLocator start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
        return Database.getQueryLocator(
            'SELECT Id, Status, isClosed, CreatedDate,Priority ' +
            ' FROM Case ' +
            ' WHERE CreatedDate < LAST_N_DAYS:365' 
        );
    }
    public void execute(Database.BatchableContext bc, List<Case> records) {
        // process each batch of records
        totalProcessed += records.size(); 
        List<Case> recordsToDelete = new List<Case>(); 
        List<Case> recordsToUpdate = new List<Case>(); 

        for(Case each : records) {

            boolean overAYearOld = each.CreatedDate < DateTime.now().addYears(-1) ;
            boolean over90DaysLowPriorityOpen = 
                each.CreatedDate < DateTime.now().addDays(-90)  && 
                each.Priority == 'Low' && each.isClosed == false ;  

            // if created more than a year
            if (overAYearOld)  {
                recordsToDelete.add(each);
            }else if (over90DaysLowPriorityOpen) {
                each.Status = 'Closed'; 
                recordsToUpdate.add(each); 
            }

            if (! recordsToDelete.isEmpty() ) {
                // delete recordsToDelete ; 
                Database.delete(recordsToDelete,false); 
            }
            if (! recordsToUpdate.isEmpty() ) {
                update recordsToUpdate ; 
            }

        }
        
        
    }   

    public void finish(Database.BatchableContext bc) {
        // execute any post-processing operations
        System.debug('totalProcessed value is : ' + totalProcessed);
        EmailManager.sendMail(UserInfo.getUserEmail(), 'Case Processed', 'Total Processed '+ totalProcessed); 
    }
        
}