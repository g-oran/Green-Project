import { LightningElement, api } from 'lwc';

export default class RichTextComponent extends LightningElement {
   @api fieldValue = " ";
   @api fieldLabel;

    changeHandle(event){
        this.fieldValue = event.target.value;
    }
}