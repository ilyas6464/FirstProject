import get10ContactsWithPhone from "@salesforce/apex/ContactController.get10ContactsWithPhone";
import { LightningElement, wire } from "lwc";
export default class ReviewExercise4 extends LightningElement {

    // wire the data from apex method into property 
    // @wire(get10ContactsWithPhone)
    // cons;
    
    cons;
    error; 

    // wire the data from apex method into function
    // @wire(get10ContactsWithPhone)
    // consFromApex( result  ) {
        
    //      access data using result.data , error using result.error
    //     if (result.data) {
    //         this.cons = result.data;
    //         console.log(this.cons);
    //     }
    // }
        // wire the data from apex method into function
    @wire(get10ContactsWithPhone)
    consFromApex( {data, error}  ) {
        
        // access data using data , error using error variable 
        if (data) {
            this.cons = data;
            this.error = undefined; 
            console.log(this.cons);
        } else if (error) {
            this.error = error; 
            this.data = undefined; 
            console.log(this.error);
        }

    }
    

}