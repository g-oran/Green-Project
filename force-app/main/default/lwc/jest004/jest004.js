import { LightningElement } from 'lwc';

export default class Jest004 extends LightningElement {
    isVisible = false;

    changeHandler(event){
        this.isVisible = event.target.checked;
    }

}