// @isTest
// public class BillingCityChange {
    
// //create a test setup and create 200 accounts and contacts according to requirements
//     @testSetup
//     static void setup(){
//         List<Account> accList=new List<Account>();
//         List<Contact> conList=new List<Contact>();
        
//         for(Integer i=0;i<200;i++){
//             Account acc=new Account(Name='acc'+i);
//             acc.BillingCountry='USA';
//             acc.BillingState='NY';
//             accList.add(acc);
//         }
//         insert accList;
        
//         for(Account acc:[Select id,name from Account]){
//             Contact con = new Contact(LastName=acc.Name+'Contact');
//             con.AccountId=acc.Id;
//             conList.add(con);
//         }
//         insert conList;
//     }
    
// //create test method-copy the anonymous window
//     @isTest
//     public static void test(){
//         Test.startTest();
//         	BillingCityChange obj = new BillingCityChange();
// 	Database.executeBatch(obj);
//         Test.stopTest();
        
// //assert if 200 records have the mailingstate Indiana
//         System.assertEquals(200, [Select count() from Contact where mailingstate='NY']);
//     }

// }


@isTest
public class BillingCityChangeTest {
  // Test setup method to create 200 accounts and contacts
  @testSetup
  static void setup() {
    List<Account> accList = new List<Account>();
    List<Contact> conList = new List<Contact>();

    for (Integer i = 0; i < 200; i++) {
      Account acc = new Account(Name = 'acc' + i);
      acc.BillingCountry = 'USA';
      acc.BillingState = 'Indiana';
      accList.add(acc);
    }
    insert accList;

    for (Account acc : accList) {
      Contact con = new Contact(
        LastName = acc.Name + 'Contact',
        AccountId = acc.Id
      );
      conList.add(con);
    }
    insert conList;

    for (Account acc : accList) {
      acc.BillingState = 'NY';
    }
    update accList;
  }

  // Test method
  @isTest
  public static void test() {
    Test.startTest();
    BillingCityChange obj = new BillingCityChange();
    Database.executeBatch(obj);
    Test.stopTest();

    // Assert that 200 records have the mailing state set to 'Indiana'
    Integer UpdatedContactCount = [
      SELECT COUNT()
      FROM Contact
      WHERE MailingState = 'NY'
    ];
    System.assertEquals(200, UpdatedContactCount);
  }
}
