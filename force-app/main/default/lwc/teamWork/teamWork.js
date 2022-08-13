import { LightningElement } from 'lwc'; 
 
export default class Teamwork extends LightningElement { 
    firstName; 
    lastName; 
 
    changeHandlerFirstName(event){ 
      this.firstName = event.target.value; 
    } 
 
    changeHandlerLastName(event){ 
      this.lastName = event.target.value; 
    } 
 
    clickHandler(){ 
        alert("Hello "+ this.firstName + " " + this.lastName); 
    } 
}