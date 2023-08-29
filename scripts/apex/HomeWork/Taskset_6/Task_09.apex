//  **  # Task Set 6 **

// 9. Create an Boolean Array with 10 elements and count the the number of true value

Boolean[] truthArr = new Boolean[]{true,true,false,true,true,false,true,true,false,false};

Integer count = 0 ; 

for(Integer i=0; i<truthArr.size() ; i++) {
    
    if(truthArr[i]==true){
        count++ ; 
    }

}

System.debug('truthArr value is : ' + truthArr); 
System.debug('count value is : ' + count ); 