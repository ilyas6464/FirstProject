public with sharing class TaskAfterAccountUpdate {
    public TaskAfterAccountUpdate() {

    }
}public class TaskAfterAccountUpdate implements Queueable{
    

    public void execute(QueueableContext context) {

       System.debug('Things that I need to do right '+ 
                   +'after Account Update Aysnc Code') ; 

       
    }


}