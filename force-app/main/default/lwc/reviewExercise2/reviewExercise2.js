import { LightningElement } from "lwc";
export default class ReviewExercise2 extends LightningElement {

    isChecked = false;

    get textToDisplay() {
        
        // if (this.isChecked) {
        //     return "TEXT FOR CHECKED!!!";
        // } else {
        //     return "TEXT FOR UNCHECKED!!!"
        // }
        return (this.isChecked) ? "TEXT FOR CHECKED!!!" : "TEXT FOR UNCHECKED!!!"; 

    }

    
    handleChange(event) {
        
        console.log(event.detail.checked); 
        this.isChecked = event.detail.checked; 
    }  


}