trigger AccountTrigger on Account (before update, after update) {
//When user updates account record, if user changes account name, throw an error 
//‘Account name once created cannot be modified’ 
if(trigger.isBefore && trigger.isUpdate){

//trigger.new
//trigger.old

/*
    for( Account accNew : trigger.new){

        for( Account accOld : trigger.old){
            if(accNew.Id==accOld.Id && accNew.Name!=accOld.Name){
                accNew.addError('Account name once created cannot be modified');
            }
        }
    }
*/

//instead of using two for loops we can use trigger.oldMap
//here key is id. and value is account object

//Map<Id,Account>

for( Account accNew : trigger.new){
    Account accOld=trigger.oldMap.get(accNew.id);
    if(accNew.Name!=accOld.Name){
        accNew.addError('Account name once created cannot be modified');
    }
}


}


//When user updates account record, if billing address is changed, 
//update all its child contacts mailing address field same as account billing address.
//billingStreet

if(trigger.isAfter && trigger.isUpdate){

    Set<Id> accountsChanged = new Set<Id>();

    for(Account accNew : trigger.new){
        Account accOld =trigger.oldMap.get(accNew.Id);
        if(accNew.BillingStreet!=accOld.BillingStreet){
            accountsChanged.add(accNew.Id);
        }
    }

//with soql we will retrieve the fields of the account and child contacts

List<Account> accList = [Select Id, Billingstreet, (Select Id, MailingStreet from Contacts)
                        from Account
                        where Id in : accountsChanged ];

List<Contact> conList = new List<Contact>();

for( Account acc : accList){
    for(Contact con : acc.Contacts){
        con.MailingStreet=acc.BillingStreet;
        conList.add(con);
    }
}                       
                       
update conList;

}
                  


}