Boolean isBaby1Laughing = false ;
 Boolean isBaby2Laughing = false ; 
// exclusive to boolean variables only in conditional statement 
// you do not have to use ==true to check for equality 
// you can simply use the variable name itself and it will do the same
 if(isBaby1Laughing && isBaby2Laughing  ){
     System.debug('Both are laughing ') ; 
 }else if(isBaby1Laughing){
     System.debug('Only Baby 1 is laughing') ; 
 }else if(isBaby2Laughing){
      System.debug('Only Baby 2 is laughing') ; 
 }else{
      System.debug('No babies are laughing') ; 
 }