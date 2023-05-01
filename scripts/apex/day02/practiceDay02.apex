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


// Create multiple variable with same in one line 
/*
integer num1 = 10 ;
integer num2 = 20 ;
integer num3 = 30 ;
*/
// it can be done easily as below 
integer num1 = 10 , num2 = 20 , num3 = 30 ;

// Relational operators  > , >= , < , <= , == , != <>
// it take two items returns true or false result

// Check if num1 is greater than num2 and return the result into a variable
Boolean isNum1GreaterThanNum2 = num1 > num2 ;

System.debug('Is Num1 Greater Than Num2 : ' + isNum1GreaterThanNum2);

Boolean isNum2LessThanNum3 = num2<num3 ; //true

System.debug('Is Num2 Less Than Num3 : ' + isNum2LessThanNum3);

//Compare num1 is greater than or equal num3 and driectly print out the result 
//in this format : Is Num1 Greater Than Num3 : falseOrTrue

// use paranthesis to see (num1 >= num3) as one then contenate
System.debug('Is Num1 Greater Than Num3 :' + (num1 >= num3) );


// == checking for equality of 2 items , = is assigment operator 

// check if num3 value is 30 or not 

System.debug( 'Is num3 and num2 equal? : '+ ( num3 == num2) );


// checking for Not inequality of 2 items  <>  !=

System.debug('Is num1 not equal to num2 : ' + (num1 != num2));
System.debug('Is num1 not equal to num2 : ' + (num1 <> num2));


String language = 'Apex' ;
// == on string equality check is case insensitive  
System.debug('Is the language apex or not : ' + (language=='Apex') );


// Logical Operator : AND ( && ) OR( || )  Not( ! ) 

integer num4= 40 , num5= 50 , num6= 60 ;

// is num4 more than 20 and less than 45
// store the result into boolean variable and print out

Boolean isNum4Between20and45 = (num4 > 20) && (num4< 45) ; // true
System.debug('is ' + Num4 +' Beetween 20 and 45 : ' +isNum4Between20and45 ); // true

// Check if num5 is greater than 100 or less than 20 ;
Boolean isNum5Greaterthan100OrLessThan20 = (num5>100) || (num5<20) ; // false
System.debug('is num5 is greater than 100 or Less than 20 : ' + isNum5Greaterthan100OrLessThan20);

System.debug( isNum4Between20and45 ); // true
// Logical Not(!) can be used on any boolean variable or anything that return boolen
//and return opposite value, true==> false and false==>true
System.debug(!isNum4Between20and45 ); // false

System.debug(!true);  //false
System.debug(!false); //true

// -------Compound Operator. : += -= *= /=

Integer score = 100 ; 

// increase the value of the score by 5 

//score = score + 5 ;  // 105 
  score += 5 ;   // 105 
  System.debug('increase the value of the score by 5 : ' + score);

// decrease the value of the score by 55 

//score = score - 55 ; // 50
  score -= 55 ;  // 50
  System.debug('decrease the value of the score by 55 : ' + score);

// double the value of score (multiply by 2 )

// score = score * 2 ; // 100
   score *= 2 ; // 100 
   System.debug('double the value of score : ' + score);

// divide the current value of score by 4 and reassign 
//   score = score / 4 ; //25
   score /= 4 ; // 25 ;  
   System.debug('divide the current value of score by 4 : ' + score);


// using += for String 
  String myName = 'Jon' ; 
  //myName = myName + ' Snow';
  myName += ' Snow' ;  // Jon Snow
  myName += ' of Winterfell'; 
  // Jon Snow of Winterfell
  System.debug('Name: ' + myName);


// Increment and Decrement Operator  ++ -- 

Integer age = 20 ; 

// increase the value age by 1 
//age = age + 1 ;  // 21
//age += 1 ;  // 21
++age ; // 21
System.debug('age after ++ is :  ' + age); // 21

// decreasea the value age by 1
// age = age -1 ; // 20
//age -= 1 ; // 20
--age ; // 20
System.debug('age after -- is : ' + age); // 20

