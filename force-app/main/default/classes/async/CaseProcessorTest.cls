@isTest
private class CaseProcessorTest {
    
    @isTest
    static void testOver1YearOldCasesShouldBeDeleted(){
        // Arrange : prepare data created 1 year before Today
        List<Case> oldCases = new List<Case>(); 
        for(Integer i=1; i<=10 ;i++) {
            oldCases.add( new Case(Subject='Test '+i) );
        }
        insert oldCases; 

        for (Case each : oldCases) {
            Test.setCreatedDate(each.Id, DateTime.now().addDays(-366) ); 
        }
        // optionally check initial data create 1 year before
        List<Case> oneYearOldCasesBefore =[SELECT Id,Subject FROM Case 
                                    WHERE CreatedDate < LAST_N_DAYS:365];
        Assert.areEqual(10,oneYearOldCasesBefore.size() );

        // Act : execute batch apex 
        Test.startTest(); 
        CaseProcessor cp = new CaseProcessor(); 
        Database.executeBatch(cp,200); 
        Test.stopTest(); 
        
        // Assert : check any data created 1 year before Today is deleted by checking list size
                  // you may also pass the IDs of the records to the query 
        List<Case> oneYearOldCasesAfter =[SELECT Id,Subject FROM Case 
                                     WHERE CreatedDate < LAST_N_DAYS:365];
        Assert.areEqual(0,oneYearOldCasesAfter.size() );
        // OR YOU CAN USE BELOW WITHOUT ADDING ANYTHING INSIDE COUNT()
        Assert.areEqual(0,[SELECT COUNT() FROM Case WHERE CreatedDate < LAST_N_DAYS:365] );

    }

    @isTest
    static void testOver90daysOldLowPriorityCasesShouldBeClosed(){
        
        // Arrange : prepare data created  before Today
        List<Case> oldCases = new List<Case>(); 
        for(Integer i=1; i<=10 ;i++) {
            oldCases.add( new Case(Subject='Test '+i, Priority='Low') );
        }
        insert oldCases; 

        for (Case each : oldCases) {
            Test.setCreatedDate(each.Id, DateTime.now().addDays(-91) ); 
        }
        
        List<Case> d90daysOldCasesBefore =[SELECT Id,Subject FROM Case 
                                    WHERE CreatedDate < LAST_N_DAYS:90
                                    AND Priority='Low'
                                    AND Status = 'New'];
        Assert.areEqual(10,d90daysOldCasesBefore.size() );

        Test.startTest(); 
        CaseProcessor cp = new CaseProcessor(); 
        Database.executeBatch(cp,200); 
        Test.stopTest(); 
        
        List<Case> d90daysOldCasesAfter =[SELECT Id,Subject FROM Case 
                                     WHERE CreatedDate < LAST_N_DAYS:90 
                                     AND Priority='Low'
                                     AND Status = 'Closed'];
        Assert.areEqual(0,d90daysOldCasesAfter.size() );
 // OR YOU CAN USE BELOW WITHOUT ADDING ANYTHING INSIDE COUNT()
        Assert.areEqual(0, [SELECT COUNT() FROM Case 
                            WHERE CreatedDate < LAST_N_DAYS:90 
                              AND Priority='Low'
                              AND Status = 'Closed'] 
                       );

    }

    @isTest
    static void testAnyOtherCasesShouldNotBeProcessed(){
        
        List<Case> oldCases = new List<Case>(); 
        for(Integer i=1; i<=10 ;i++) {
            oldCases.add( new Case(Subject='Test '+i, Priority='Low') );
        }
        insert oldCases; 

        Test.startTest(); 
        CaseProcessor cp = new CaseProcessor(); 
        Database.executeBatch(cp,200); 
        Test.stopTest(); 
        
        List<Case> casesAfterBatchRun =[SELECT Id,Subject FROM Case 
                                     WHERE Priority='Low'
                                     AND IsClosed = False];
        Assert.areEqual(10,casesAfterBatchRun.size() );
         // OR YOU CAN USE BELOW WITHOUT ADDING ANYTHING INSIDE COUNT()
        Assert.areEqual(10, [SELECT COUNT() FROM Case 
                            WHERE Priority='Low'
                            AND IsClosed = False] 
                       );
    }

}