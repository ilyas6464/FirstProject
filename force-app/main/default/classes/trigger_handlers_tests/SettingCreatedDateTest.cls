@isTest
private class SettingCreatedDateTest {
    
    @isTest
    static void testSettingCreatedDate(){
        
        Account acc = new Account(Name='Test Account');  
        Insert acc;
        DateTime yesterday = DateTime.now() - 1 ; 
        // CreatedDate is not a field you can update
        // However we can do that in the test using below line
        // this line is setting the CreatedDate field to yesterday
        Test.setCreatedDate(acc.Id, yesterday);  
        
        List<Account> accLst = [SELECT Id, Name, CreatedDate FROM Account 
                            WHERE CreatedDate = YESTERDAY];  
        Assert.areEqual(1, accLst.size()) ; 

    }


}