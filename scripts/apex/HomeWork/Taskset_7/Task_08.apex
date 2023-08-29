// **# Tasks Set 7 **

// 8. Write an Apex code that create List or Array of 7 String values
List<String> strList = new List<String>{
  'item1',
  'item2',
  'item3',
  'item4',
  'item5',
  'item6',
  'item7'
};
System.debug('strList value is : ' + strList);
//    - store the index of item in the middle in to variable mid1
Integer mid1 = 3;
System.debug('the index of item in the middle is : ' + mid1);
//    - now imagine you unknown (odd) number of items in the list and find out a way to dynamically find the index of item in the middle
mid1 = strList.size() / 2;
//      - if you have 7 items : number 4 item is in the middle
//      - if you have 17 items : number 9 item is in the middle and so on
//      - no loop needed here
//    - print out the value of item in the middle
System.debug(
  'the value of item in the middle strList.get(mid1) is : ' + strList.get(mid1)
);