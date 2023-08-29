// 8. Create a Contact variable and assign value along with below fields
//    - `LastName`, `Birthdate`
Contact c1 = new Contact(
  LastName = 'Snow',
  BirthDate = Date.newInstance(2022, 2, 12)
);
//    - **insert** it into Salesforce
insert c1 ; 
//    - check if today is the birthday of this Contact according to `BirthDate` field value
if(c1.BirthDate.month()== Date.today().month() && 
    c1.BirthDate.day()==  Date.today().day() ){
//       - print 'It's your Birthday Today!! Tada!! '
    System.debug('It\'s your Birthday Today!! Tada!! '); 
//       - else print 'It's not your Birthday Today!'
}else{
    System.debug('It\'s not your Birthday Today!'); 
}
//       - Hint : birthday means the date has same month and year as Today's date