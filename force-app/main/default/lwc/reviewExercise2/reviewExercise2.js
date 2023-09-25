import { LightningElement } from "lwc";
export default class ReviewExercise2 extends LightningElement {

    isChecked = false;
    
    handleChange(event) {
        
        console.log(event.detail.checked); 
        this.isChecked = event.detail.checked; 
    }  


}