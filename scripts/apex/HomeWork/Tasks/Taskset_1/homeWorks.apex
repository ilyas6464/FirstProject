/*
if it's spring  print  Go Camping 
if it's summer  print  Go Swimming 
if It's fall    print  Go Pick Pumkin
if it's winter   print  Go to sleep 
if nothing match print invalid season 
*/


String season = 'summer' ; 

if(season == 'spring'){
    System.debug('Go Camping ');
}else if(season == 'summer'){
    System.debug('Go Swimming  ');
}else if(season == 'fall'){
    System.debug('Go Pick Pumkin ');
}else if(season == 'winter'){
    System.debug('Go to sleep ');
}else{
    System.debug('Invalid Season');
}

switch on season{
    
    when 'spring'{
        System.debug('Go Camping ');
    }
    When 'summer'{
        System.debug('Go swimming ');
    }
    when 'fall'{
        System.debug('Go pick pumkin ');
    }
    when 'winter'{
        System.debug('Go sleep ');
    }
    when else{
        System.debug('invalid season ');
    }
}




// Task 1
/*
Declare three integers and initialize their values
checks if the first number is greater than the second number and the second number is greater than the third number. 
If this is true, the program should print "The first number is the largest." 
If not, the program should print "The first number is not the largest."



integer num1 = 16, num2 = 9, num3 = 6;
if(num1 > num2 && num2> num3){ 
     System.debug('The first number is the largest.'); 
    
}else{
    System.debug('The first number is not the largest.'); 

}
*/

/* 
//Task 2
Declare and initialize an Integer variable. 
checks if a given integer is positive, negative, or zero. 
If the number is positive, the program should print "Positive." 
If the number is negative, the program should print “negative”
Else print Zero

integer num=0;
    if(num > 0){
        System.debug('Positive');
    }else if(num < 0){
        System.debug('Negative');
    }else{
        System.debug('Zero');
    }
*/
/* 
//Task3
Declare and initialize a String variable with one character
check the if character is vowel 'a' , 'e', 'o' , 'u' , 'i'
if true print it's a vowel 
else print it's not a vowel!

String vowel = 'k'; 
if(vowel=='a'||vowel== 'e' || vowel== 'o'|| vowel=='u' || vowel=='i'){
    System.debug('it\'s a vowel');
}else{
    System.debug('it\'s not vowel!');                 
}
*/
/* 
//Task 4
Declare and initialize two variables 
opportunityAmount as Integer 
stage as String 
if an opportunityAmount is greater than $100,000 and stage is Closed Won 
    then print out "High Priority Opportunity, follow up immediately ".
else print out  create an task to follow up next week 


integer opportunityAmount = 100000;
String stage = 'Closed Won';
if(opportunityAmount == 100000 && stage == 'Closed Won'  ){
    System.debug('High Priority Opportunity, follow up immediately'); 
}else{
    System.debug('create an task to follow up next week  ');
}
*/
/* 
//Task5
Declare and initialize variables as below 
leadCompanySize as String 
checks if a Lead's Company size is either "Small" or "Medium". 
If either of these conditions are met, 
print a message that says "Good Lead" 
else take no action 

String leadCompanySize= 'large' ;
if(leadCompanySize == 'small' || leadCompanySize == 'medium'){
    System.debug('Good Lead');
}
*/
/* 
//Task6
Declare and initialize variables as below 
annualRevenue as Long 
numberOfEmployees as Integer

checks if an Account's Annual Revenue is greater than $1,000,000 or
 if its Number of Employees is greater than 500. 
If either of these conditions are met, display a message that says "High Potential Account".
else display "Not a High Potential Account"

Long annualRevenue = 1000000L;
integer numberOfEmployees = 500;
if(annualRevenue > 1000000 || numberOfEmployees > 500 ){
    System.debug('High Potential Account');
    
}else{
    System.debug('Not High Potential Account');

}
*/
/* 
//Task7
Declare 3 Integer variavles and initialize their values. 
Write a code to print out the largest number by comparing them with each other. 

integer num1 = 500;
integer num2 = 400;
integer num3 = 300;

if(num1 > num2 && num1 > num3 ){
    System.debug('Largest number ' + num1);
    
}else if(num2 > num3 && num2 > num1){
    System.debug('Largest number ' + num2);
}else if(num3 > num2 && num3 > num1){
    System.debug('Largest number ' + num3);
}
*/
