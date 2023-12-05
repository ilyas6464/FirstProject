import { LightningElement } from 'lwc';

export default class TrailheadValuesParent extends LightningElement {

    name = "Josh Lang";

    parentPoint = "300000 - parent";

    parentBadge = "600 - parent";

    handleChange(){
        this.parentPoint = "600000 - parent button";
    }

}