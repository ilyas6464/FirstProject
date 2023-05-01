/**

String is a Data type to Store text 

It has a lot of reusable methods that we can use directly 
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods

 */

String message = 'Hello World';

//https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_length

// length() method: return the character count inside the String

System.debug('message.length() value is : ' + message.length());
//message.length() value is : 11

// isEmpty (yourSTringHere) method ; Return  true if it's not '' or null else false

System.debug('String.isEmpty(message) value is : ' + String.isEmpty(message));
//String.isEmpty(message) value is : false

String msg1 = '   ';
System.debug('String.isEmpty(msg1) value is : ' + String.isEmpty(msg1));
//String.isEmpty(msg1) value is : false

//isBlank is method : Returns true if the specified String is the white space,empty(''),or
//null; otherwise, returns false.
System.debug('String.isBlank(msg1) value is : ' + String.isBlank(msg1));
//String.isBlank(msg1) value is : true

// toUpperCase()  return the UPPERCASE version of the text
System.debug('message.toUpperCase() value is : ' + message.toUpperCase());
//message.toUpperCase() value is : HELLO WORLD

// toLowerCase()  return the LOWERCASE version of the text
System.debug('message.toLowerCase() value is : ' + message.toLowerCase());
//message.toLowerCase() value is : hello world

String season = 'summer';

switch on season.toUpperCase() {
  when 'SPRING' {
    System.debug('value Spring match');
  }
  when 'SUMMER' {
    System.debug('value Summer match');
  }
  when 'FALL' {
    System.debug('value Fall match');
  }
  when else {
    System.debug('nothing match');
  }
}

