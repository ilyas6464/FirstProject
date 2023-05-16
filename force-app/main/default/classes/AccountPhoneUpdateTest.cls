@isTest
public class AccountPhoneUpdateTest {

@isTest
public static void testUpdate(){
//Arrange
List<Account> accList= new List<Account>();
for(Integer i=1; i<=5; i++){
    accList.add(new Account(Name='Test'+i, Phone='123321456'));
}
test.startTest();
insert accList;

List<Contact> conList= new List<Contact>();
for(Account each: accList){
    conList.add(new Contact(LastName='Test', AccountId=each.Id));
}
insert conList;
for(Account each:accList){
    each.phone = 
}
test.stopTest();

List<Contact> updatedConList=[select id,  homePhone from contact where Id=:conList[0].Id];

System.assertEquals('123321456', updatedConList[0].HomePhone);

}


}