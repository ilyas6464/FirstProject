// # Tasks Set 9 :

// 10. Create a List of 5 String values 
List<String> strList = new List<String>{
  'hanna',
  'mom',
  'jon',
  'DoD',
  'lol'
};
// - create a Boolean variable called isAllPalindrome and set to true
Boolean isAllPalindrome = true ; //assume all palindrome, as long as one is not ,set to false
// - loop through each item in the list 
for(String each : strList) {
//    - check if the word is palindrome or not 
//    - if it's not, set isAllPalindrome to false
    if(each != each.reverse() ){
        isAllPalindrome = false ; //as long as one is not ,set to false
        // now no point of checking the rest, AllOfNothing!
        break; 
    }

//    - else take no action (so no else)
}
    

