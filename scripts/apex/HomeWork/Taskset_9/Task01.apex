/*
Create a variable contains your full name
   - print it out in uppercase
   - print it out in lowercase
   - find the index of space and print
   - print first char of first and last name together :initials
*/

String name = 'ilyas aktas';
System.debug(name.toUpperCase(name) ); 
System.debug(name.toLowerCase(name) ); 
Integer index = ' '
System.debug(name.left(1) +name.mid(6,1) );
====================================================
// # Tasks Set 9 :
// 1. Create a variable contains your full name (2 words)
String fullName = 'Jon Snow';
//    - print it out in uppercase
System.debug('fullName.toUppercase() value is : ' + fullName.toUppercase());
//    - print it out in lowercase
System.debug('fullName.toLowercase() value is : ' + fullName.toLowercase());

//    - find the index of space and print
Integer indexOfSpace = fullName.indexOf(' ');
System.debug('index Of Space is : ' + indexOfSpace);
//    - print first char of first and last name together :initials
// first letter on the left is left(1)
// last name first character is right after space
// so you will need to get 1 character after space,
// using mid(indexAfterSpace, 1 character)
String initials = fullName.left(1) + fullName.mid(indexOfSpace + 1, 1);
System.debug('initials value : ' + initials);

// alternative approach , split your full name to words then get first character
List<String> nameSplit = fullName.split(' ');
System.debug('Initial is : ' + nameSplit[0].left(1) + nameSplit[1].left(1));