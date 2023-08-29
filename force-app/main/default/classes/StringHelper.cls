/**
 * Make the method available for flow 
 * as Apex Action using @InvocableMethod annotation
 * One class can only have on invocable method
    it must be public or global and it must static
    it can have only one parameter as List of something
    if you want to pass data to the method from the flow
 * below example show invocable method 
 * that can take a String and return uppercase version of the string
 * even though from the flow we pass single data 
 * the method need to accept list of string and return list of string
 * as per requirement of Invocable method
    for more detail check out the below documentation
 * @refer https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_annotation_InvocableMethod.htm

 */
public with sharing class StringHelper {

    @InvocableMethod(label='Make String Uppercase' 
                    description='Returns uppercase version' 
                    category='Account'
                    iconName='slds:utility:capslock')
    public static List<String> makeUpperCase(List<String> input){

        List<String> uppercaseLst = new  List<String>();
        // bunch of logic here
        for(String each : input) {
            uppercaseLst.add(each.toUpperCase() );
        }
        
        return uppercaseLst; 

    }


}