public class AccountUpdateAsync implements Queueable{
    
    String  decription;


    public AccountUpdateAsync(String decription){
        this.decription = decription;
    }
    public void execute(QueueableContext context){
        // awsome code here
        System.debug('Running some awsome code in AccountUpdateAsync'); 
        //Print Out value of decription field
        System.debug('this.decription value is : ' + this.decription);
        
    }



}