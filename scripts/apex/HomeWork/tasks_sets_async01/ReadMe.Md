# Coding Task : 

AW Computing Salesforce Organization use Email to case and Web to case for Case and it's causing data storage issue due to over 40 millions of case records and many of them are old and not worked on or already closed. 
As AW Computing policy, they only want to keep past 1 years of Case record. 
As a salesforce developer, you are tasked with a user story to close or delete the case based on certain criteria. 
   - Delete any Open Cases created 1 year before Today
   - Close any low priority Open cases created 90 days prior to Today
   - Send out an email after all record processed with below details 
     - What was the Status
     - How many records were processed 
     - What was the total batch size 
     - What was the Number Of Errors

1. Create a Batch Apex class `CaseProcessor`
   * implement `Database.Batchable<SObject>` , `Database.Stateful`
   * add a instance variable called `totalProcessed` as Integer
   * implement abstract methods from `Batchable` interface
     * `start` : use `Database.QueryLocator` for return type
       - write a query to process record created Today while you are testing
       - then change it to correct query according to the requirement
     * `execute` : 
       - write a logic to process each batch of records 
       - create 2 empty List : `recordsToDelete` , `recordsToUpdate`
       - loop through each items in records in this batch 
         - if `CreatedDate` is earlier than 1 year
           - add it to the `recordsToDelete` List 
         - if `CreatedDate` is earlier than 90 days and `isClosed` not true
           - update the `Status` to `Closed`
           - add it to the `recordsToUpdate` List 
       - outside the loop 
         - `delete recordsToDelete`
         - `update recordsToUpdate`
     * `finish` : 
       - get the status of the job run by querying `AsyncApexJob`
       - provide the `jobId` to the query
       - prepare the subject and body according to the job result
       - use `EmailManager` class to send email to logged in user
       - optionally 
         - create a overloaded `sendMail` method inside your `EmailManager`
         - it should have 2 parameter(`body`,`subject`) instead of 3 
         - it should call `sendMail` method that accept 3 param inside body
           - `sendEmail(currentUsersEmail, body, subject)`
         - so now you can just use this method if you want to send email to logged in user

2. Create a Test class `CaseProcessorTest`

   * create first test `testOver1YearOldCasesShouldBeDeleted`
     * `arrange`
       - create and insert List of 10 cases with Subject 1-10
       - Loop through each cases 
         - set the `createdDate` to 1 year before
         - `Test.setCreatedDate(each.Id, DateTime.now().addMonths(-13) );`
         - now you have 10 cases created 1 year before
     * `act`
       - start with `Test.startTest()` method
       - Create an instance of `CaseProcessor`
       - call `Database.execute` method and pass above object to the method
       - optionally : 
         - write a query to get all the cases created 1 year before
         - assert there are 10 cases exists in the system
       - end with `Test.stopTest()` method to force the async apex to run synchronously 
     * `assert`
       - write the same query to get all the records created 1 year before
       - expect the size of the query result is 0 since it should be deleted 



   * create second test `testOver90daysOldLowPriorityCasesShouldBeClosed`
     * `arrange`
       - create and insert List of 10 cases with 
         - `Subject` 1-10
         - `Priority` low
       - Loop through each cases 
         - set the `createdDate` to 91 days before Today
         - `Test.setCreatedDate(each.Id, DateTime.now().addDays(-91) );`
         - now you have 10 cases created 90 days before
     * `act`
       - start with `Test.startTest()` method
       - Create an instance of `CaseProcessor`
       - call `Database.execute` method and pass above object to the method
       - optionally : 
         - write a query to get all the 
           - low priority , open cases created 90 days before
         - assert there are 10 cases exists in the system
       - end with `Test.stopTest()` method to force the async apex to run synchronously 
     * `assert`
       - write the query to get all the case records 
         - low priority , closed cases created 90 days before
       - expect the size of the query result is 10 
         - since all low priority cases should be updated to `Closed` status


   * create third test `testAnyOtherCasesShouldNotBeProcessed`
     * `arrange`
       - create and insert List of 10 cases with 
         - `Subject` 1-10
         - `Priority` low
     * `act`
       - start with `Test.startTest()` method
       - Create an instance of `CaseProcessor`
       - call `Database.execute` method and pass above object to the method
       - end with `Test.stopTest()` method to force the async apex to run synchronously 
     * `assert`
       - write the query to get all the open case records 
       - expect the size of the query result is 10 


3. AW Computing want to schedule this batch process to run in certain intervals. 
   - Create a class `ScheduledCaseCleanUp` that implements `Schedulable` 
   - implement the `execute` abstract method 
   - inside method body
   - Create an instance of `CaseProcessor`
   - call `Database.execute` method and pass above object to the method

4. Either in your anon-apex file or in the SetUp of your org, schedule `ScheduledCaseCleanUp` to run weekly every Friday night. 