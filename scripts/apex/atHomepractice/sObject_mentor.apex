
 Map<String, String> employeeMap = new Map<String,String>();
        employeeMap.put('Ddene', 'F');
        employeeMap.put('Winfred', 'M');
        employeeMap.put('Jereme', 'M');
        employeeMap.put('Glad', 'F');
        employeeMap.put('Desirae', 'F');
        employeeMap.put('Kakalina', 'f');
        employeeMap.put('Bertrando', 'M');
        employeeMap.put('Ajay', 'F');
        employeeMap.put('Brigitte', 'F');
        employeeMap.put('Derk', 'm');
        employeeMap.put('Orlando', 'M');
        employeeMap.put('Selle', 'f');
        employeeMap.put('Marika', 'F');

for(String each : employeeMap.keySet()) {
    
    if(employeeMap.get(each).equalsIgnoreCase('F')){
        employeeMap.put(each,'Female');
        
    }else if(employeeMap.get(each).equalsIgnoreCase('m')){
        employeeMap.put(each,'Male');
        
    }
}
 System.debug('employeeMap value is : ' + employeeMap);
 
System.debug('----------------------------------------------');

Map<String, Integer> map1 = new Map<String, Integer>();
map1.put('John', 123000);
map1.put('Antony', 100000);
map1.put('Jimmy', 115000);
map1.put('Jalil', 145000);
map1.put('James', 110000);
map1.put('Conor', 85000);
map1.put('Josh', 117000);
map1.put('Cory', 118000);
map1.put('Anderson',125000);
map1.put('Steven', 135000);

//  1 who has the maximum and minimum salary?


Integer max = 0;
Integer min = 1000000;
for(integer each : map1.values()){
    if(each < min ){
        min =each;
    }
    if(each>max)
    max = each;
}
System.debug('min value is : ' + min);
System.debug('max value is : ' + max);

for(String each :map1.keySet() ) {
    if(map1.get(each) == min)
        System.debug(each + ' gets the min salary: '+ map1.get(each));
        if(map1.get(each)== max)
            System.debug(each+' gets the max salary: '+map1.get(each));
            
}
    System.debug('----------------------------------------');

    Map<String,Decimal> priceMap = new Map<String,Decimal>();
    priceMap.put('laptop',900);
    priceMap.put('phone',1200);
    priceMap.put('airpod',150);
//Suppose you have a custom object called "Productc" which has two fields: 
// "Name" and "Pricec". You also have a Map<String, Decimal> called "priceMap" 
// that contains the names and prices of various products.

// Write an Apex code snippet to loop through the entries in the priceMap, 
// and for each entry, create a new Product__c record with the corresponding 
// name and price, and insert it into Salesforce.

// List<Product__c> prolist = new List<product__c>();
// for(String each : priceMap.keySet() ) {
//     product__c pro = new product__c();
//     pro.name = each;
//     pro.price__c = priceMap.get(each);
//     prolist.add(pro);

// }
//     insert prolist;
    System.debug('---------------------');
   
 Map<String,Decimal> productMap = new Map<String,Decimal>();
productMap.put('Apple Macbook', 1500);
productMap.put('Samsung S60', 700);
productMap.put('apple Airpod', 300);
productMap.put('Apple Iphone 13', 1000);
productMap.put('Samsung Galaxy', 800);

//You have a map of products and you should increase the prices by10%
//if they include 'Apple'
//print out the new priceMap

for(String each : productMap.keySet()) {
   if(each.toLowerCase().contains('apple'))

   productMap.put(each,productMap.get(each) * 1.1);
}
    System.debug('productMap value is : ' + productMap);
    

