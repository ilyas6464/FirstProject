@isTest
private class AccountContactUpdateTriggerTest {
   
    @isTest
    static void testContactPhoneUpdateIfAccountPhoneUpdate(){
        
        //arrange
        // create 2 account with 3 Contacts using the method 
        List<Account>accList = Utils.createAccountsWithContacts(2,3);

        // Act
        accList[0].phone = '1234567890';
        accList[1].phone = '757152612' ;
        Test.startTest();
        update accList;
        Test.stopTest();

        //Assert
        // write a soql to get rhe contact under accList
        List<Contact> allContact = [SELECT Phone, Account.phone FROM Contact WHERE AccountId = :accList ];

        for(Contact each : allContact){
            
            //assert Account.Phone field = Contact Phone

            Assert.areEqual(each.Account.Phone , each.Phone);
            



        }


    }

    
}