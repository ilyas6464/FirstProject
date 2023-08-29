public class ScheduledCaseCleanUp implements Schedulable {
    
    
    public void execute(SchedulableContext ctx) {
        // awesome code here
       CaseProcessor cp = new CaseProcessor(); 
       Database.executeBatch(cp,200); 
    }

}