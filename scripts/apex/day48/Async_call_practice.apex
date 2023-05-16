//just like @future method
// we can put a code into Class that implements Queueble interface
// and provide detail of execute method
// in order to run the code
// system.enqueueblejob

System.debug('Running apex-anon'); 

//List<Account> myAccListc =  AccountController.getAccountWithAnnualRevenue()


Queueable q = new AccountUpdateAsync(  'AWSOME' );
System.enqueueJob( q ) ;
