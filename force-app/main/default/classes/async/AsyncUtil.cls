public  class AsyncUtil {
    /**
     * 
     * Create a Static void method called boilWater
     * simply print boiling water
     * add@future annotion on top of the method
     */
    /**
    @future will make a method as future method
    future method is always static void method
    it can have parameters, the type can not be sObject
    it can be any primitive types like String, Integer, Double, Id and so on 
    it can also be List of those types
    */
    @future
    public static void boilWater(){
        System.debug(' boiling water.... ' );
        
    }


}