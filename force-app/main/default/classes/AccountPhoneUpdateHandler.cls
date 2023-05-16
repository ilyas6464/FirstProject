public  class AccountPhoneUpdateHandler {

    public static void  handleAfterUpdate(List<Account>accList, Map<Id,Account> map1, Map<Id,Account> map2){
    
    Set<Id> accId = new Set<Id> ();
    for(Account each: accList){
        Account old= map1.get(each.Id);
        if(each.Phone!=old.Phone){
            accId.add(each.Id);
        }
    }
    if(accId.isEmpty()){
        return;
    }
    
    List<Contact> conList= [select id, AccountId, HomePhone from contact where AccountId in:accId];
    
    
    for(Contact eachCon : conList){
        Account parentAcc= map2.get(eachCon.AccountId);
        eachCon.HomePhone=parentAcc.Phone;
    }
    if(!conList.isEmpty()){
        update conList;
    }
    
    }
    }