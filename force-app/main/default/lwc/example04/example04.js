import { LightningElement } from "lwc";
export default class App extends LightningElement {
   users = ["John", "Mary", "Susan"];
   num1 = 5;
   num2 = 3;
   get firstItem(){
     return this.users[0];
   }
   get calculation(){
     return this.num1 + this.num2;
   }
}