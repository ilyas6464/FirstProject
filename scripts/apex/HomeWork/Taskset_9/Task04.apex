// # Tasks Set 9 :
// > anagrams words contain the same letters in a different order
// for example : late , tale , teal
// 4. Write a program that 
//    - create two string variables with values
String word1 = 'late' ; 
String word2 = 'tale' ; 

if(word1.containsOnly(word2) && word2.containsOnly(word1) ){
//    - print 'Its anagram!!!' if they contains same letter in different order AKA anagram
   System.debug('Its anagram!!!'); 
}else{
//    - print 'Its not anagram!!'
   System.debug('Its not anagram!!!'); 
}
//    - HINT : use `containsOnly` method twice on each other