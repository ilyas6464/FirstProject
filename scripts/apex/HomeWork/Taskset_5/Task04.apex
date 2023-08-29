// # Task set 5 

// 4. Write a program that store List of Double with 10 items 

List<Double> priceList = new List<Double>{
  20.028d,
  27.517d,
  39.274d,
  77.207d,
  36.586d,
  77.27d,
  2.028d,
  28.817d,
  139.74d,
  16.5d
};

//    Loop through each item and print 
for(Double each : priceList) {
    System.debug('Current value : ' + each);
//  break out of the loop if any number is between 50.5 and 99.99 
    if(each>50.5 && each<99.99){
        break ; 
    }
}
    
