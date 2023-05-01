public  class Iphone extends Phones {
    public String model ;

    public Iphone(String name, Decimal price, Integer phoneNumber, String model) {

        super(name,price, phoneNumber);
        this.model=model ;
    }

    public override Decimal value (){
        return   this.price = this.price * 3;
    }

    public override void call(){
        System.debug('Iphone is callable');
    }

}