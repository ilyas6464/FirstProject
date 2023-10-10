import { LightningElement } from "lwc";
export default class ReviewParent extends LightningElement {
	parentMessage = "Parent Message";
	handleChildTell(event){
		// event.detail
		console.log(event.detail);
	this.parentMessage = "Child Told you something" + event.detail;

	}
} 