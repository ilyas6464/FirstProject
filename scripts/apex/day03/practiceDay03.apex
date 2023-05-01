/*
Extrat variable from below sentece
create variable with proper type
and use it in debug statement to show in the log 

My Name is Your NAME
I AM X Years old
I live in XX State
I attend class daily (trurOrFalse)
I am X.XXX feet Tall
*/

//data type shoul alwyas start with uppercase
//variable name should always start with lowercase
//if you have more than one word use camelCase
String studentName   ='Ilyas' ;
Integer studentAge   = 33  ;
String StudentState  = 'NY' ;
Boolean studentClass = true ;
Decimal studenHeight = 5.1 ;

System.debug('My Name is ' + studentName + '.' );
System.debug('I am ' + studentAge +'years ol.');

System.debug('I live in. ' + StudentState + ' State.');
System.debug('I attend class daily' + studentClass);
System.debug('I m ' + studenHeight + 'feet tall' );

//System.debug('My Name is ' + studentName 
             +' I am ' + studentAge +'years old.'
             +'I live in. ' + StudentState + ' State.'
             +'I attend class daily' + studentClass
             +'I m ' + studenHeight + 'feet tall'); // writing in one line


 // Assigment operator =
// Compound assignment operator += , -= , *= , /=\
// Increment and Decrement Operator ++ --

// Relation (Comparition) Operators > , >= , < , <=, == , != , <>
// Compare two items and return Boolean result (true|false)

// Logical Operators && (AND) || (OR) || !(NOT)

// Shortcut for declaring and assigment multiple variable of same type
integer num1 = 100, num2 = 200,num = 300;

Decimal price1 = 699.99 , price2 = 799.99 , price3 = 1100.99;

// print out the result of pricel is greater than price3

System.debug('IS price1 is greater than price3 : ' + (price1 > price3));

// Store the result of pricel greater than price2 AND price2 less than price3 
// into a Boolean variabale and print it out

Boolean result1 = (price1 > price2) && (price2 < price3);
// if you want to separate long sentence open cotation '' and add + '+'
System.debug('Result of pricel greater than '+
' price2 AND price2 less than price3 : ' + result1);


// Increament and Decreament operators to increase|decrease the value by one 

// ++ used in the beginning of the variable is called pre-increment  ++score
// ++ used in the end of the variable is called post-increment  score++
// -- used in the beginning of the variable is called pre-decrement  --score
// -- used in the end of the variable is called post-decrement  score--

Integer count = 10 ; 

System.debug('value of count ' + count );  //10 

System.debug('value of ++count : '+         ++count );  // 11
System.debug('value of --count : '+         --count );  // 10 


System.debug('value of count++ : '+         count++ );  // 10  
System.debug('the current value of count '+  count );   // 11

System.debug('value of count-- : '+        count--  ); // 11 right now Next time 10
System.debug('the current value of count '+  count );   // 10 

// current value of count is 10 
System.debug(count++  +'-------'+ count ); //10 ---- 11

// current value of count is 11
System.debug(count-- + '-------' + count);// 11 ---- 10

// current value of count is 10 

System.debug(++count    + '--------' + count);// 11------11

// current value of count is 11

System.debug(--count   + '--------' + count);// 10------10

// Conditional statement : 
// conditional execute part of the code 

Integer examScore = 57 ;

// if exam score is more than 66
// show debug message passed, otherwise show faild 

/* if statement without else
if(examScore > 66){
    System.debug('Passed');    
}
*/

//if exam score is more than 66
//show debug message passed , and message congrats
//otherwise show faild , and try again later

if(examScore > 66){
    System.debug('Passed'); 
    System.debug('Congrats');
}else{
    System.debug('Faild');
    System.debug('Try Again Later');
}
    

// Create String variable to store studentName
// give a value
// if the value equal Fady , print clockmaster
// else print not clockmaster
String studentName = 'Fady' ;
if(studentName == 'Fady' ){
    System.debug('Clockmaster, Break Time');
}else{
    System.debug('No Break!!');
    
}


/// Create a variables : 
// annualRevenue as Integer and initialize it's value 
// rating as String 

/* If the annualRevenue greater than 100000 
  assign the value of rating to hot 
  otherwise assign the value of rating to cold 
  print out the rating variable outside your if statement 
*/    

//Integer annualRevenue = 500 ;
//String rating ; 
//{ } this is called curly braces
/**
if(annualRevenue > 100000 ){
    rating = 'hot' ; 
}else{
    rating = 'cold' ; 
}
System.debug('Rating is ' + rating);
**/ 

// Ternary operator can be used to
// conditionally assign the value of a variable 
// DataType yourVariableName =  (condition) ? TrueValue : FasleValue; 
   
Integer annualRevenue = 500000000 ; 
String rating = (annualRevenue > 100000) ? 'hot' : 'cold' ; 
System.debug('Rating is ' + rating);


// declare and initiaze a variable called score1 
// declare a String variable called examResult 
// assign the value of examResult according to the score1 > 66 or not
Integer score1 = 67 ; 
String examResult = (score1>66) ? 'PASS' : 'FAIL'  ; 
System.debug('Exam Result : ' + examResult);

// declare and initiaze a variable called salary as Integer 
// declare a Double variable called taxRate 
// assign the value of taxRate according to below condition
// if the salary is greater than 100K , taxRate is 0.3 else 0.15
// declare and initiaze a variable called salary as Integer 
// declare a Double variable called taxRate 
// assign the value of taxRate according to below condition
// if the salary is greater than 100K , taxRate is 0.3 else 0.15
Integer salary = 150000; 
// Double taxRate; 
/*
if (salary> 100000){
    taxRate = 0.3 ; 
}else{
     taxRate = 0.15 ;    
}
*/
 Double taxRate =  (salary> 100000) ? 0.3  : 0.15 ;  


// declare a String variable called season 
// and initialize it's value 
/*
if it's spring  print  Go Camping 
if it's summer  print  Go Swimming 
if It's fall    print  Go Pick Pumkin
if it's wintet   print  Go to sleep 
if nothing match print invalid season 
*/

String season = 'summer' ; 
