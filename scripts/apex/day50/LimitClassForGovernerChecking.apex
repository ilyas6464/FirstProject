System.debug('Hello');
for (Integer i = 0; i < 95; i++) {
  List<Account> lst = [SELECT Id FROM Account];
  System.debug('Queries Used' + Limits.getQueries());
}
for (Integer i = 0; i < 105; i++) {
  //check how many SOQL has already been used
  //and when its more then 90 get out og the loop
  if (Limits.getQueries() < 90) {
    List<Account> lst = [SELECT Id FROM Account];
  } else {
    System.debug('We are getting closed to the limits!!');
    break;
  }
}
// Limits class methods pattern

// how many you actually used
// to get what is the usage you have right now 
// we use getTheNameOfTheThings
// for example getQueries getDmlStatement

// to get the total limit that enforced
// we use getTheNameOfTheThings
// for example getLimitQueries getLimitDmlStatement