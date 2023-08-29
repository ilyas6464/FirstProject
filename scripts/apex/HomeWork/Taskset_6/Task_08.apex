//  **  # Task Set 6 **

// 8. Create an String Array with 10 elements and print them in reverse order

List<String> strList = new List<String>{'item1','item2','item3','item4','item5','item6','item7','item8','item9','item10'};

for(Integer i=strList.size()-1 ; i>=0 ;i--) {
    System.debug('strList.get(i) value is : ' + strList.get(i)); 
}