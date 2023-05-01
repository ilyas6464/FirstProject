public abstract class Electronics {

    public  String  name ; 
    public Decimal  price ;
  
    public Electronics(String name, Decimal price){
      this.name = name ;
      this.price = price ;
  
    }
  
    public abstract void displayInfo(); 
  
  
  
    public abstract Decimal value();
  
  
  
  
  }
  