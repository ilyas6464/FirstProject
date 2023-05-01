
 // method changing 
 String str = 'cookie';

// String result = str.toUpperCase() ;

 //System.debug('result value is : ' + result); 
 //result value is : COOKIE

//calling one method after anaother method
//it's possible as long as the method you are calling 
//is the method avaible from the Data type of returned value
 String result = str.toUpperCase().left(4).reverse();
 //System.debug('result value is : ' + result); 
 //result value is : KOOC

//Integer result1 = str.contains('a').

/**
## split(regExp)
Returns a list that contains each substring of the String that is terminated by either the regular
 expression regExp or the end of the String.

Returns a list that contains each substring of the String that i split by the given stritg,
for example if you split sentence by space you get list of string containing each word

 */
 
 String message = 'VA Weather is beautiful Today';
// split this sentence by space so we can get list of string that contains words
List<String> wordList =  message.split(' ');
// System.debug('wordList value is : ' + wordList); 

// how many word does this sentence have
System.debug('how many word does this sentence have : ' + wordList.size()); // 5

for(String each : wordList) {
    System.debug('Current value : ' + each + ' : length is ' + each.length());//Current value : Today : length is 5
}
    
String name= 'Mario Cruz';
// If you split any String by empty String,
// you end up with list of each chracter
List<String>charsList = name.split('');
System.debug('charsList value is : ' + charsList); 
//charsList value is : (M, a, r, i, o,  , C, r, u, z)