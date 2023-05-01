/**
2. Write an Apex code to create an List of Strings with 4 items
 set the value of last item to the value of first item 
  for example original list values :  item1 , item2, item3, item4 
                   list values now :  item1 , item2, item3, item1 */

//shortcut varListWithStrValues
List<String> strList = new List<String>{
  'item1',
  'item2',
  'item3',
  'item4',
  'item5'
};
System.debug('strList value is : ' + strList);
String firstItem = strList.get(0); // array syntax  strList[0]

strList.set(3, firstItem);

// This is the array syntax if you want to update
// strList[3] = firstItem ;
// what if you want to get last item index dynamically without putting number 3
// so we can make it work for list with any size
// strList.set(  strList.size()-1  , firstItem) ;
System.debug('strList value is : ' + strList);

//Collection of Unique Element : Set
/**
Set is a collection of unique elements 
It's a unordered collection meaning there is no index
order is not guaranteed 
 */

Set<Integer> numberSet = new Set<Integer>();
numberSet.add(10);
numberSet.add(10);
numberSet.add(10);
numberSet.add(10);
numberSet.add(10);
numberSet.add(10);

System.debug('numberSet value is : ' + numberSet);
//OUTPUT : numberSet value is : {10}

//methods

// size()
System.debug('numberSet.size()  value is : ' + numberSet.size());
//OUTPUT : numberSet.size()  value is : 1

// clear()   : delete all items in the Set
numberSet.clear();
System.debug('numberSet value is : ' + numberSet);
//OUTPUT : numberSet value is : {}

// isEmpty()  : return true if size is 0 , return false if not
System.debug('numberSet.isEmpty() value is : ' + numberSet.isEmpty());
//OUTPUT : numberSet.isEmpty() value is : true

numberSet.add(10);
numberSet.add(20);
numberSet.add(30);
System.debug('numberSet value is : ' + numberSet);
//OUTPUT : numberSet value is : {10, 20, 30}

// contains(valueToCheck)  // return true if item exist , false if not

System.debug('numberSet.contains(10)  value is : ' + numberSet.contains(10)); //true
System.debug('numberSet.contains(15)  value is : ' + numberSet.contains(15)); //false
//OUTPUT : numberSet.contains(10)  value is : true
//OUTPUT : numberSet.contains(15)  value is : false

// remove(valueToDelete)
// UNLIKE LIST , IT EXPECTS A VALUE NOT INDEX
numberSet.remove(30);
System.debug('numberSet value is : ' + numberSet);
//OUTPUT : numberSet value is : {10, 20}


// YOU CAN NOT LOOP THROUGH SET USING FOR LOOP 
// BECAUSE THERE IS NO INDEX
// Code snippet : ForEach
// update the collection name 
//  hit tab select data type if needed
for(Integer each : numberSet) {
    System.debug('Current value : ' + each);
}
    
