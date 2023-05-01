public  class Fitness {
    
    public static Decimal calculateBMI (Decimal weight,Decimal height ){
        Decimal BMI = weight / (height * height);
        return BMI;
       // return weight / (height * height);
    }
    //Create a method with name 'calculatePace' which accepts necessary parameter and returns km per hour
//pace=(distance in km)/(time in hours)

 public static Decimal calculatePace(Decimal distance,Decimal min){
    return distance / (min/60);

 }
 

}

//Create a Fitness class 

//Create a method with name 'calculateBMI' which accepts necessary parameter and returns bmi value.

//bmi=(body weight in kg)/(body height in meter)^2
// Adult Body Mass Index or BMI
// If your BMI is less than 18.5, it falls within the underweight range.
// If your BMI is 18.5 to 24.9, it falls within the Healthy Weight range.
// If your BMI is 25.0 to 29.9, it falls within the overweight range.
// If your BMI is 30.0 or higher, it falls within the obese range.

