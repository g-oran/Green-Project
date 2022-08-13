import { LightningElement } from 'lwc';
import getAccountRecords from '@salesforce/apex/NewAccounts.getAccounts';

export default class ImperativeCall extends LightningElement {
    accountList;
    showAccounts;

    clickHandleShow(){
        getAccountRecords()
        .then(result => {
            this.accountList = result;
        })
        
        this.showAccounts = true;
    }

    clickHandleHide(){

        this.showAccounts = false;
    }

}