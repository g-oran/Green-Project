import { LightningElement } from 'lwc';
export default class Example02 extends LightningElement {
    name = "Kenny";
    changeHandler(event){
        this.name = event.target.value;
    }
}