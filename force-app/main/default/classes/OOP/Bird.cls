/**
   * A class extends another class
   * A class implements another interface
   * A class can only extends 1 other class
   * A class can implements a interface
   * It will be required to implement the
   * of all the abstract method
   */
  public class Bird implements Flyable {

    /**
     * fly method that provide implementation
     * for abstract fly()method from
     * Flyable interface
     */
    public void fly() {
      System.debug('Bird fly with the wing');
    }
    public Integer flyLongRange(){

        return 100;

        
    }

  }
