// # Task set 5

// 2. Write a program that store List of long with 10 items with positive and negative numbers
List<Long> longNumList = new List<Long>{
  532206L,
  462731L,
  -100L,
  623335L,
  -200L,
  795103L,
  -30000L,
  -23L,
  192812L,
  -10L,
  226301L
};

//     - print out all positive values
//     - use for loop
for(Long each : longNumList) {
//     - try using the `continue`.
    if(each<=0){
        continue ; 
    }

    System.debug('Positive number value is : ' + each); 
}
    