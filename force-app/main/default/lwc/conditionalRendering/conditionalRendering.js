import { LightningElement } from 'lwc';
export default class App extends LightningElement {
  areDetailsVisible = false;
  changedBox(event){
    this.areDetailsVisible = event.target.checked;
  }
}