/**

You cn exit any type of loop early
using the keyword break when needed

 */

// create a list of interger


List<Integer> numList = new List<Integer>{7,12,15, 10, 17, 100, 4};
// loop through each and very, when you find 10, stop looping 

for(Integer eachNum  : numList ){
   
     System.debug(eachNum) ;
    if(eachNum == 10){
        System.debug('Yay');
        //in order to break the loop to stop looking
        //you can use break statement
        break;
    }
    //System.debug(eachNum) ; if you print here number  10 will be skiped 
}
 
/**
 Imagine you are the teacher and you have 10 kids 

 You are looking for the trouble maker by going through each and every kid , once you found the one, you stop looking at the rest

 */