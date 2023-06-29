import { LightningElement, wire } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import MY_MESSAGE_CHANNEL from '@salesforce/messageChannel/MyChannel__c';

export default class MessageSender extends LightningElement {
    // Variable to store the data to be sent
    myData = '';

    // Use the message context wire adapter to access the Lightning Message Service
    @wire(MessageContext)
    messageContext;

    // Handle the input change event to update the data variable
    handleInputChange(event) {
        this.myData = event.target.value;
    }

    handleClick() {
        console.log('Button clicked ' + this.myData);


        // publish method will publish the message through
        // the MY_MESSAGE_CHANNEL using messageContext
        // it has 3 parameters
        // 1, the MessageContext we wired
        // 2, the MY_MESSAGE_CHANNEL
        // 3, the actual message you want to send in object 
        const message = {
            myData: this.myData
        }; 

        // Publish the message using the message context and message channel
        publish(this.messageContext, MY_MESSAGE_CHANNEL, message);
    }
}