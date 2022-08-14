import { LightningElement, wire } from 'lwc';
import getAccountList from '@salesforce/apex/AccountController.getAccountList';

export default class WireApex extends LightningElement {
    @wire(getAccountList) wireAccounts
}