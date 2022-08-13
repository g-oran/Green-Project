import { LightningElement, wire } from 'lwc';
import getAccounts from '@salesforce/apex/NewAccounts.getAccounts';

export default class CustomAccountList extends LightningElement {

    columns = [{label:"Id", fieldName: "Id"}, {label:"Name", fieldName: "Name"}];

    @wire(getAccounts) wiredAccounts;
}