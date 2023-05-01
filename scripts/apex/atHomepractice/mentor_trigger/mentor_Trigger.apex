
trigger AccountTrigger on Account (before insert ) {
//Requirement: While user creating an Account,
//if user provides Billing address 
//but not Shipping address
//write a logic populate Shipping address with Billing address

    for(Account each : Trigger.new) {
   if(each.ShippingState == null){
    each.ShippingState=each.BillingState;
   }
   if(each.ShippingCity == null){
    each.ShippingCity=each.BillingCity;
   }
   if(each.ShippingCountry == null){
    each.ShippingCountry=each.BillingCountry;
   }
  }

}

// requirment:
// While using creating account,If Annual Revenue provided by user is less than 1000,than write a logic to throw an ERROR to user

trigger account on Account (before insert) {
    for(Account acc:Trigger.new){
        if(acc.AnnualRevenue<=1000){
		acc.addError('Annual Revenue can not be less than 1000');
		            
        }
    }
}

//Requirment:
// when user created an account,write a logic to create contact with same name and asscociate account and contact

Trigger AccountTrigger on Account (after insert){
  List<Contact> conList = new List<Contact>();
  for(Account acc1 : Trigger.new){
    Contact con = new Contact();
    con.LastName = acc.Name;
    con.AccountId = acc.Id;
    conList.add(con);
  }
  insert Conlist;
}