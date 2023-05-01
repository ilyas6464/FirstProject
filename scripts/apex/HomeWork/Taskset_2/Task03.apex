 Boolean isBaby1Laughing = true ;
 Boolean isBaby2Laughing = false ; 

 if(isBaby1Laughing==true && isBaby2Laughing==true  ){
     System.debug('Both are laughing ') ; 
 }else if(isBaby1Laughing == true){
     System.debug('Only Baby 1 is laughing') ; 
 }else if(isBaby2Laughing == true  ){
      System.debug('Only Baby 2 is laughing') ; 
 }else{
      System.debug('No babies are laughing') ; 
 }