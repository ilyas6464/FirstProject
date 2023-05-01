Schedulable s = new ScheduledTaskCleanUp(); 

// crone expression is used to 
// define time intervals programmatically 
// It has 6 part
// second, minute, hour, dayOfMonth, Month, daysOfWeek
// anything you do not want to fill up use question mark
// String crex = '0 1 12 28 4 ?' ; 

String crex = '0 53 23 ? 4 FRI' ; 

System.schedule('Task job', crex, s) ;