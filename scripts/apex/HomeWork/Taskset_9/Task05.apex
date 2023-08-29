// # Tasks Set 9 :

// 5. Create a string variable containing an email address, 
//    - for example jonsnow@nightwatch.com
   String email = 'jonsnow@nightwatch.com'; 
//    - store the index of the '@' character in the email address.
   Integer atIndex = email.indexOf('@'); 
//    - print out the part before '@' in uppercase
   System.debug('email.left(atIndex) value is : ' + email.left(atIndex)); 

// alternatively you can use  another String method subStringBefore 
   System.debug('email.subStringBefore(\'@\') value is : ' 
                     + email.subStringBefore('@')); 

//    - print out whatever is after '@'
   // multiple approach to achieve this
      // you can use mid method and give character count 
      // as long as you start from correct index, character count can go over the range so it can just return the rest 
      // below example used email.length() for character count to go over the range
   System.debug('email.mid(atIndex+1, email.length() ) value is : ' 
                  + email.mid(atIndex+1, email.length() )); 
   // you can also use another String method subStringAfter
   System.debug('email.subStringAfter(\'@\') value is : ' 
                     + email.subStringAfter('@')); 
//    - print out last 3 characters
   System.debug('email.right(3) value is : ' + email.right(3)); 


   // additional method example for subStringXXX series methods 
   // get the string in between @ and . 
   System.debug('email.subStringBetween(\'@\',\'.\') value is : ' 
                     + email.subStringBetween('@','.')); 
   // get anything after last .  (assuming there might be more . in email)
   System.debug('email.subStringAfterLast(\'.\') value is : ' 
                     + email.subStringAfterLast('.')); 
   // and more , checkout substringXXX methods in the doc