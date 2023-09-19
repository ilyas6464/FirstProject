import { LightningElement } from "lwc";

export default class ReviewExersize1 extends LightningElement {

    // this is property , can be referred in HTML using { propertyName} syntax
    message = "Hello World" ; 

    handleChange(event) {
        
        this.message = event.target.value; 

    }

}