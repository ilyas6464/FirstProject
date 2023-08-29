// **# Tasks Set 7 **

// 6. Write an Apex code that create List or Array of 5 String values
List<String> starWarsCharacters = new List<String>{
  'Anakin',
  'Obivan',
  'Yoda',
  'Windu',
  'Ahsoka'
};
System.debug('starWarsCharacters Before value is : ' + starWarsCharacters); 
// starWarsCharacters Before value is : (Anakin, Obivan, Yoda, Windu, Ahsoka)
//    - add the word sf+index at the end of each element

for(Integer i=0; i<starWarsCharacters.size() ;i++) {
   String newValue = starWarsCharacters.get(i)+' sf'+(i+1) ; 
   starWarsCharacters.set(i, newValue  ); 
}
//    - `{'Anakin','Obivan','Yoda','Windu','Ahsoka'}` =>
//    - `{'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'}`
System.debug('starWarsCharacters After value is : ' + starWarsCharacters); 
// starWarsCharacters After value is : (Anakin sf1, Obivan sf2, Yoda sf3, Windu sf4, Ahsoka sf5)

// Or use Array Syntax as below 

String[] swCharacterArr = new String[]{
  'Anakin',
  'Obivan',
  'Yoda',
  'Windu',
  'Ahsoka'
};

System.debug('swCharacterArr After value is : ' + swCharacterArr); 
// swCharacterArr After value is : (Anakin, Obivan, Yoda, Windu, Ahsoka)

for(Integer i=0; i<swCharacterArr.size() ; i++) {
   
   swCharacterArr[i] = swCharacterArr[i] + ' sf'+(i+1) ; 

}
System.debug('swCharacterArr After value is : ' + swCharacterArr); 
// swCharacterArr After value is : (Anakin sf1, Obivan sf2, Yoda sf3, Windu sf4, Ahsoka sf5)

