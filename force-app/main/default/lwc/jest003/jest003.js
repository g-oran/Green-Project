import { LightningElement } from 'lwc';

export default class Jest003 extends LightningElement {
    greeting = "Kenny";

    handleChange(event){
        this.greeting = event.target.value;
    }
}