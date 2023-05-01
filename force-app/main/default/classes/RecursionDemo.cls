public class RecursionDemo {
  // count from 1 to N in this method
  // and print it out
  public static void printNumber(Integer n) {
    System.debug('n value is : ' + n);
    if (n > 1) {
      printNumber(n - 1);
    }
  }
}
 // count ffrom N to 1 in this method and print it out
 // puclic static void printNumber(Integer n ){
//  system.debug('n value is : ' + n);
//  if(n>1){
//      printNumber(n-1);
//     } 
//  }