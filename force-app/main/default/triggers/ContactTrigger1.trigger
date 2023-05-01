trigger ContactTrigger1 on Contact (after insert, after update, after delete) {

set<Id> accId = new set<Id>();
if(Trigger.isInsert || Trigger.isAfter){

}
for(Contanct each : Trigger.new) {
    accId.add(each.AccountId);
}
if(Trigger.isUpdate || Trigger.isAfter){

}
for(Contact each : Trigger.o) {
    System.debug('Current value : ' + each);
}

}