// **# Tasks Set 7 **

// 11.  Write an Apex code that create 2 Set of String with 5 values
//    - update set1 to only retain the elements exists in both set1 and set2
//       -  HINT : retainAll method

Set<String> strSet1 = new Set<String>{'item1','item2','item3','item4','item5'};
Set<String> strSet2 = new Set<String>{'item3','item4','item5','item6','item7'};

System.debug('strSet1 value is : ' + strSet1); 
System.debug('strSet2 value is : ' + strSet2); 

strSet1.retainAll(strSet2) ; 
System.debug('strSet1 value After is : ' + strSet1); 

/**
strSet1 value is : {item1, item2, item3, item4, item5}
strSet2 value is : {item3, item4, item5, item6, item7}
strSet1 value After is : {item3, item4, item5}
 */