import { LightningElement } from 'lwc';

export default class Practice2 extends LightningElement {

    firstName = "ILYAS"; 
    lastName = "AKTAS"; 

    // getter is a type of function 
    // that return value
    // usually used for getting calculated result
    // from the fields instead of creating new fields
    get fullName() {
        //return this.firstName + ' ' + this.lastName; 
        return `${this.firstName} ${this.lastName}`;
    }
    
    // add a function | method called handle click
    handleClick(){
        console.log("Button is Clicked");
        this.firstName = 'Clark';
        this.lastName = 'Kent'
    }

}