// //reverse a given string do not use reverse method

// String str = 'ilyas';
// String  reversed = '';
// String newString = str.substring(0,5);
// System.debug('newstring value is : ' + newString); 


// for(Integer i = str.length()-1;i>=0;i--){
// reversed+=str.substring(i,i+1);
// }
// System.debug('reversed value is : ' + reversed); 
// //newstring value is : ilyas
//reversed value is : sayli

//write a program to print true if the string "cat" and "dog" appear the same number of times in the given sentence
//Ex:
//      sentence = "caT dog dogG cAt"
//      output:true
string sentence = 'caT dog dog cAt';
Integer numCat = 0,numDog=0;
List<String> newString = new List<String>();
newString = sentence.split(' ');
System.debug('newString value is : ' + newString); 
for(String each : newString ) {
    if(each.equalsIgnoreCase('cat'))
    numCat++;
    else if(each.equalsIgnoreCase('dog'))
    numDog++;
}
System.debug('Number of dogs are equal to number of cats' + (numCat==numDog)); 
    

// Remove met:
Integer len1 = sentence.length();
integer len2 = sentence.toLowerCase().remove('cat').length();
integer len3 = sentence.toLowerCase().remove('dog').length();
System.debug('Number of dogs are equal to number of cats' + (len2==len3));