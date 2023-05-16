trigger AccountPhoneUpdate on Account (after update) {

    AccountPhoneUpdateHandler.handleAfterUpdate(Trigger.new, Trigger.oldMap, Trigger.newMap);
    
    //     Set<Id> accId = new Set<Id> ();
    // for(Account each: Trigger.new){
    //     Account old= Trigger.oldMap.get(each.Id);
    //     if(each.Phone!=old.Phone){
    //         accId.add(each.Id);
    //     }
    // }
    // if(accId.isEmpty()){
    //     return;
    // }
    
    // List<Contact> conList= [select id, AccountId, HomePhone from contact where AccountId in:accId];
    
    
    // for(Contact eachCon : conList){
    //     Account parentAcc= Trigger.newMap.get(eachCon.AccountId);
    //     eachCon.HomePhone=parentAcc.Phone;
    // }
    // if(!conList.isEmpty()){
    //     update conList;
    // }
    
    
    }
    
  
    