// Get currently loggedin user
// and store it into User variable 
Id userId = UserInfo.getUserId(); 
User u = [SELECT Id, FirstName, Division FROM USER 
            WHERE Id = :userId]; 
// update division field to Education 
u.Division = 'Education' ; 
update u ; 

// insert an Account here 
Account a = new Account(Name='cool'); 
insert a; 
// IF WE DO SOMETHING LIKE THIS IN TRIGGER 
// WE WILL GET AN ERROR CALLED MIXED DML ERROR
// IT'S SAYING YOU CAN NOT PEFORM DML ON
// SET-UP OBJECTS( USER, PROFILE, GROUP, QUEUE)
// AND NON-SETUP ONJECT (ACCOUNT CONTACT, YOURCUSTOMOBJECT__C AND SO ON)
// TOGETHER 