/**
 Create a Date variable with name birthDay and assign the value that represent any date you want.
   - print out the day portion of the date (check the doc for right method from Date Class)
   - print out the month portion of the date (check the doc for right method)
   - print out the year portion of the data (check the doc for right method)
   - print out the result of checking if the year fall into leapYear (check the doc for right method)
   - print out the monthsBetween today and birthDay as number representation of how many month as Integer(check the doc)
   - print out the daysBetween today and birthDay as number representation of how many days as Integer(check the doc)

 */
 Date birthday =date.newInstance(1990, 09, 26);
 System.debug('day of the birthday value is : ' + birthday.day()); 
 System.debug('day of the birthday value is : ' + birthday.month() ); 
 System.debug('day of the birthday value is : ' + birthday.year()); 

 System.debug('isleap year : ' +Date.isLeapYear(birthday.year()) ); 
 System.debug('months between today and birthday  : ' + birthday.monthsBetween(Date.today()) ); 
 System.debug('days between today and birthday  : ' + birthday.daysBetween(Date.today()) ); 



 