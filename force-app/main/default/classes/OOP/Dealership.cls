public class Dealership {
  private String name;
  private List<ElectricCar> eCars;

  public Dealership(String name, List<ElectricCar> eCars) {
    this.name = name;
    this.eCars = eCars;
  }
  public void showCars() {
    for (ElectricCar each : eCars) {
      System.debug('Model is ' + each.model + 'and price' + each.price);
    }
  }
public Integer getCarCount(){
    return this.eCars.size();
}
public void discountAllCars(Integer discountAllCars){

    for(ElectricCar each : eCArs) {
        each.price -= discountAllCars; 


    }
    


}



// public Integer getDelerShipNameCharacterCount(){
//     return this.name.length();
// }

}
