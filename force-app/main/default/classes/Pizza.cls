public class Pizza {
  /*
Pizza Task:
        Attributes:
            size, numberOfCheeseTopping, numberOfPepperoniTopping

            Add a constructor that can set all the fields

        Actions:
            calcCost(): returns the totalCost of the pizza

            print out an output like this :
            'Your M size pizza with 2 numberOfCheeseTopping and 3 numberOfPepperoniTopping costs $20.5'

        Pizza cost is determined by:
                        S: $10 + $2 per cheese topping, $1,5 per pepperoni topping
                        M: $12 + $2 per cheese topping, $1,5 per pepperoni topping
                        L: $14 + $2 per cheese topping, $1,5 per pepperoni topping

 */

 public String size;
 public Integer numberOfCheeseTopping;
 public Intger numberOfPepperoniTopping;

 public pizza(String size,Integer numberOfCheeseTopping,Integer numberOfPepperoniTopping){
    this.size = size;
    this.numberOfCheeseTopping = numberOfCheeseTopping;
    this.numberOfPepperoniTopping = numberOfPepperoniTopping;

 }
 public Decimal totalCost(){

    Decimal startingCost=(size=='s')? 10 :(size == 'm')? 12 : 14 ;

    Decimal totalCost=startingCost + (numberOfCheeseTopping*2)+(numberOfPepperoniTopping*1.5);
     return totalCost;
 }



}
