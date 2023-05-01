//What is the max num from the given list
List<Integer> list1 = new List<Integer>{ 1, 2, 3, 4, 5 };

Integer max = list1.get(0);
for (Integer eachInteger : list1) {
  if (eachInteger > max)
    max = eachInteger;
}
System.debug(max);

System.debug('---------------');

List<Integer> list2 = new List<Integer>{ 1, 2, 3, 4, 5 };
Integer min = list2.get(0);
for (Integer eachInteger : list2) {
  if (eachInteger < min)
    min = eachInteger;
}
System.debug(min);

System.debug('---------------');
//Merge the two given lists

List<Integer> list3 = new List<Integer>{ 1, 2, 3, 4, 5 };
List<Integer> list4 = new List<Integer>{ 6, 7, 8, 9, 10 };

for (Integer each : list4) {
  list3.add(each);
}
System.debug(list3);

System.debug('---------------');
//Merge the unique elements of two given lists

List<Integer> list5 = new List<Integer>{ 1, 2, 3, 4, 5 };
List<Integer> list6 = new List<Integer>{ 4, 5, 6, 7, 8, 9, 10 };

Set<Integer> set1 = new Set<Integer>();
for (Integer each : list5) {
  set1.add(each);
}
for (Integer each : list6) {
  set1.add(each);
}
System.debug(set1);

System.debug('---------------');
//reverse the given list's elements
List<String> list7 = new List<String>{
  'apex',
  'java',
  'phyton',
  'javaScript',
  'C#',
  'C++'
};

List<String> reverse = new List<String>();
for (Integer i = list7.size() - 1; i >= 0; i--) {
  reverse.add(list7.get(i));
}
System.debug(reverse); //(C++, C#, javaScript, phyton, java, apex)

System.debug('---------------');

Integer n =5;
While(n>0){
    System.debug('n = '+ n );
    n--;
}System.debug('---------------');

for(Integer i  = 0; i<5; i++){
    System.debug('Hello');
    i+=3;
}//Hello
//Hello

System.debug('---------------');
for(integer i=1;i<=10;i++){
    if(i==4){
        break;
    }
    System.debug(i + '');
}//1
 //2
 //3

System.debug('---------------');

Integer i=5;
do{
    System.debug('Cydo');
    i++;
}
while(i<5);//Cydo
System.debug('---------------');

// integer x = 1;
// while(x < 6){
//     System.debug('hello');
//     if(x == 4){
//         break;
//     }
// }/infinte
System.debug('---------------');

// list<String> sentence = new list<String>{'i','like''coffee'};
// sentence.add('very');
// sentence.add(1,'do not');
// sentence.add(1,'absoltely');
// sentence.add('much');
// System.debug(sentence);
System.debug('---------------');


// Integer playerLVL = 1;
// for(Integer exp = 0; exp<1 00;exp +=10){
//     playerLVL++;
// }
// System.debug('Game over!LEvel='+ playerLVL)

// System.debug('---------------');


// list<String>sample = new List<String>();
// sample.add(1);
// sample.add(2);
// samole.remove(1);
// sample.add(1.3);
// sample.ser(1.4);
// sample.add(5);
// sample.sort();
// System.debug(sample);
