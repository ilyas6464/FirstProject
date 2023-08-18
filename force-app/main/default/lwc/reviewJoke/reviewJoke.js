import { LightningElement, wire } from "lwc";

import getJoke from "@salesforce/apex/ReviewJokeController.getJoke";

export default class ReviewJoke extends LightningElement {

    
    joke; // = "Something Funny";

    // @wire(getJoke)
    jokeFromApex; 

    // @wire(getJoke)
    // wireThisIntoFunction({ data,error}) {
    //     if(data){
    //          do something
    //     } else if (error) {
    //          do something else
    //     }
    // }
    


    handleClick() {
        
        console.log("Clicking Get Joke Button");
        getJoke().then(result => {
            console.log(result + '  : from Apex')
            this.joke = result; 
        } ); 

    }

    

    constructor() {
        super(); 
        console.log('CONSTRUCTOR RAN!!!');
    }

    connectedCallback() {
        console.log('connectedCallback RAN!!!');
        // this.joke = 'Super Fun from Apex'; 

        // getJoke().then(result => {
        //     console.log(result + '  : from Apex')
        //     this.joke = result; 
        // } ); 

    }

    renderedCallback() {
        console.log('renderedCallback RAN!!!');
    }

}