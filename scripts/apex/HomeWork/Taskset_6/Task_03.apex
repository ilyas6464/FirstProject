//  **  # Task Set 6 **

// 3. Write an Apex code to create an List of Strings with 6 items 
List<String> gotCharacters = new List<String>{
    'jon snow',
    'Daenerys Targaryen',
    'Tyrion Lannister',
    'Arya Stark',
    'Sansa Stark',
    'Cersei Lannister'
};
System.debug('gotCharacters Before value is : ' + gotCharacters); 
//gotCharacters Before value is : (jon snow, Daenerys Targaryen, Tyrion Lannister, Arya Stark, Sansa Stark, Cersei Lannister)

//     - if this list does not contains 'jon snow'
if(! gotCharacters.contains('jon snow')){
//         - then insert 'jon snow' at index 4
    gotCharacters.add(4, 'jon snow');
}else{

//     - if it does
//         - remove 'jon snow' and insert it again at index 4
    gotCharacters.remove(   gotCharacters.indexOf('jon snow')     ) ; 
    gotCharacters.add(4, 'jon snow');
}
System.debug('gotCharacters After value is : ' + gotCharacters); 


// gotCharacters After value is : (Daenerys Targaryen, Tyrion Lannister, Arya Stark, Sansa Stark, jon snow, Cersei Lannister)