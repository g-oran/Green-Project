import { LightningElement, api } from 'lwc';

export default class Data01 extends LightningElement {
    @api recordId;
    @api objectApiName;

    fields=["Id", "Name","Industry"];
}