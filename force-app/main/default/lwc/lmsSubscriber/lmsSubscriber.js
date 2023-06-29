import { LightningElement, wire } from "lwc";
import MY_MESSAGE_CHANNEL from "@salesforce/messageChannel/MyChannel__c";
import { MessageContext , subscribe, unsubscribe } from "lightning/messageService";


export default class LmsSubscriber extends LightningElement {

    receivedMessage = '';
    
    @wire(MessageContext)
    messageContext; 

    // create a property to store the subscription returned by subscribe method
    subscription = null; 

    // use lifecycle method connectedCallBack to subscribe to the channel 
    // so we can get it ready when it's loaded 
    connectedCallback() {
        // check if the subscription already exists or not 
        if (! this.subscription) {
            // if it is not already exists now call subscribe method 
            // 1,  MessageContext we wired
            // 2,  the Message Channel we imported
            // 3,  the handler function that accept message and take some action
                    // usually this is arrow function message=> doSomething(message)
            subscribe(this.messageContext,
                      MY_MESSAGE_CHANNEL,
                      message => {
                          this.receivedMessage = message.myData; 
                      }
            )
    
        }
    }

    // clean up the subscription when the component is disconnected
    disconnectedCallback() {
        unsubscribe(this.subscription); 
        this.subscription = null; 
    }



}