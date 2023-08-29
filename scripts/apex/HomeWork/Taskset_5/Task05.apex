// # Task set 5 

// 5. Write a program that create List of Id with 10 items and use 2 different loop (for loop and for each loop )to print out all value for practice 

List<Id> accIds = new List<Id>{
    '0018W00002BbgajQAB',
    '0018W00002BbgajQBB',
    '0018W00002BbgajQCB',
    '0018W00002BbgajQDB',
    '0018W00002BbgajQEB',
    '0018W00002BbgajQFB',
    '0018W00002BbgajQGB',
    '0018W00002BbgajQHB',
    '0018W00002BbgajQIB',
    '0018W00002BbgajQGB'
}; 

for(Integer i=0; i<accIds.size() ; i++) {
    System.debug('Value at index #'+ i +' is :' + accIds.get(i) );
}

//     - continue from above
//      if the any ID match exactly '001xxxxxxxxxxxxxxx'  for example '0018W00002BbgajQFB'
//      then break out of the loop
for(ID each : accIds) {
    System.debug('Current value : ' + each);
    if(each == '0018W00002BbgajQFB'){
        break; 
    }
}
