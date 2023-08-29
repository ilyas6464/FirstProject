@isTest
private class ScheduledCaseCleanupTest {
    

    @TestSetup
    static void createTestData(){

        // Arrange : prepare data created 1 year before Today
        List<Case> oldCases = new List<Case>(); 
        for(Integer i=1; i<=10 ;i++) {
            oldCases.add( new Case(Subject='Test '+i) );
        }
        insert oldCases; 

        for (Case each : oldCases) {
            Test.setCreatedDate(each.Id, DateTime.now().addDays(-366) ); 
        }

    }

    @isTest
    static void testScheduledBatchRun(){
        
        //Act 
        Test.startTest() ; 
        Schedulable stc = new ScheduledCaseCleanUp();
        System.schedule('Case cleanup', '0 0 0 15 3 ? 2042', stc ) ; 
        Test.stopTest(); 

        // the logic already been tested in your batch class so no need to test again
    }



}