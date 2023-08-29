// # Tasks Set 9 :
// 9. Create a String variable with the value 
//    - check if the value is palindrome or not 
//    - palindrome read the same from forward or backward 
//    - for example anna , hanna , race car, mom
//    - do case-sensitive check!


String word = 'Hanna' ; 
System.debug('word.equals(word.reverse() ) value is : ' 
            + word.equals( word.reverse() )  );  //false

// extra requirement : 
// do a case insensitive check and space should not matter either
// 'race car' is palindrome 

String word2 = 'Race car' ; 

String word2_NoSpace = word2.deleteWhitespace() ;
String word2_reversedNoSpace = word2_NoSpace.reverse() ;
// == is same as 
System.debug(' (word2_NoSpace==word2_reversedNoSpace)  value is : ' 
                    + (word2_NoSpace==word2_reversedNoSpace) ); 


