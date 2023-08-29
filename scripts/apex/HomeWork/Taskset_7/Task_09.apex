// **# Tasks Set 7 **

// 9. Write an Apex code that create List or Array of 8 String values
List<String> strList = new List<String>{
  'item1',
  'item2',
  'item3',
  'item4',
  'item5',
  'item6',
  'item7',
  'item8'
};
System.debug('strList value is : ' + strList); 
//    - store the the index of 2 items in the middle into 2 variables mid1, mid2
   Integer mid1 = 3 ; 
   Integer mid2 = 4 ; 
   
//    - now imagine you unknown (even) number of items in the list and find out a way to dynamically find the index of item in the middle
   mid1 = strList.size()/2 - 1 ;
   mid2 = strList.size()/2 ;

   System.debug('mid1 value is : ' + mid1); 
   System.debug('mid2 value is : ' + mid2); 
    
//      - if you have 8 items : number 4 and 6 items are in the middle
//      - if you have 18 items : number 8 and 9 items are in the middle and so on
//      - no loop needed here
//    - print out the value of items in the middle
   System.debug('strList.get(mid1) value is : ' + strList.get(mid1)); 
   System.debug('strList.get(mid2) value is : ' + strList.get(mid2)); 
   
   /**
   strList value is : (item1, item2, item3, item4, item5, item6, item7, item8)
      mid1 value is : 3
      mid2 value is : 4
      strList.get(mid1) value is : item4
      strList.get(mid2) value is : item5
    */