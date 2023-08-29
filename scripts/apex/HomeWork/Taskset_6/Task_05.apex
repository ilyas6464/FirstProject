//  **  # Task Set 6 **

// 5. Continue from above List of 10 String with some duplicates values
List<String> heroList = new List<String>{
  'Superman',
  'Batman',
  'Spiderman',
  'Iron Man',
  'Wonder Woman',
  'Captain America',
  'Iron Man',
  'Iron Man',
  'Green Lantern',
  'Batman'
};
System.debug('heroList value is : ' + heroList); 
// - Print out all indexes of 'Iron Man' in the list 
// - Create another List of Integer and Store the all indexes into new List when looping 
List<Integer> ironManIndexList = new List<Integer>();

for(Integer i=0; i<heroList.size() ; i++) {
    if(heroList.get(i)=='Iron Man'){
        ironManIndexList.add(i); 
    }
}
System.debug('ironManIndexList value is : ' + ironManIndexList); 

// - print out the size of new List. 
System.debug('ironManIndexList.size() value is : ' + ironManIndexList.size()); 
/**
heroList value is : (Superman, Batman, Spiderman, Iron Man, Wonder Woman, Captain America, Iron Man, Iron Man, Green Lantern, Batman)
ironManIndexList value is : (3, 6, 7)
ironManIndexList.size() value is : 3
 */