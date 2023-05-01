// // 1-create 5 contacts with LastName 'Brown1', 'Brown2'......'Brown5'
// // create a new Account with Name='Test Account'
// // relate the account with contacts while creating them
// // insert them

// // Task/1

List<Contact> Contacts = new List<contact>();
for(Integer i = 1; i<=5; i++){
    Contact con =new Contact();
    con.LastName ='Brown'+i;
    contacts.add(con);
}

Account acc = new Account();
acc.Name = 'Test Account';

insert Contacts;

// // 2-Create 5 new Accounts with Name Acc1, Acc2....Acc5
// // Insert them
// // Add the accounts to a Map<Id,Account>
// // print the new map
// // Create a new Account List and copy the old account list
// // update the accounts' Industry as Technology'
// // update accounts with DML
// // create a new map and add the updated accounts
// // print out the map again

// //Task/2

Account account1 = new Account(Name = 'Acc1');
Account account2 = new Account(Name = 'Acc2');
Account account3 = new Account(Name = 'Acc3');
Account account4 = new Account(Name = 'Acc4');
Account account5 = new Account(Name = 'Acc5');

insert new List<Account>{ account1, account2, account3, account4, account5 };

Map<Id, Account> accountMap = new Map<Id, Account>();
accountMap.put('001Dn00000LUyXrIAL', account1);
accountMap.put('001Dn00000LUyXsIAL', account2);
accountMap.put('001Dn00000LUyXtIAL', account3);
accountMap.put('001Dn00000LUyXuIAL', account4);
accountMap.put('001Dn00000LUyXvIAL', account5);
System.debug(accountMap);

List<Account> accountList = new List<Account>(accountMap.values());

for (Account acc : accountList) {
  acc.Industry = 'Technology';
}
update accountList;

Map<Id, Account> updatedAccountMap = new Map<Id, Account>();
for (Account acc : accountList) {
  updatedAccountMap.put(acc.Id, acc);
}
System.debug(updatedAccountMap);
