// createing a date variable and assigning the value to today's date
// today method of date class will return today's class
Date d1 = Date.today();
System.debug('d1 value is : ' + d1); 
//d1 value is : 2023-02-24 00:00:00

// Creating a date with any year, month,day
/**
newInstance(year, month, day)
Constructs a Date from Integer representations of the year, month (1=Jan), and day.
 */

 Date d2 = Date.newInstance(1999, 9, 17);
 System.debug('d2 value is : ' + d2); 
 //d2 value is : 1999-09-17 00:00:00

/**
addDays(additionalDays)
Adds the specified number of additional days to a Date.
Signature

public Date addDays(Integer additionalDays)
 */

Date weekAfterD2 = d2.addDays(7);
System.debug('weekAfterD2 value is : ' + weekAfterD2); 

Date weekBeforeD2 = d2.addDays(-7);
System.debug('weekBeforeD2 value is : ' + weekBeforeD2); 
//weekBeforeD2 value is : 1999-09-10 00:00:00