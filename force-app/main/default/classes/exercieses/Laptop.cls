public class Laptop extends Electronics implements Codingable {
  public Integer storage;

  public Laptop(String name, Decimal price, Integer storage) {
    super(name, price);
    this.storage = storage;
  }
  public override void displayInfo() {
    System.debug('This laptop name is   ' + this.name + 'price is  ' + this.price);
  }

  public override Decimal value() {
   return  this.price = this.price + 250;
  }

  public virtual void code(){
    System.debug('Laptop is codingable electronics') ;
  }
}