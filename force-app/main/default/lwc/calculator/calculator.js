import { LightningElement } from 'lwc';

export default class Calculator extends LightningElement {
    firstNumber;
    secondNumber;
    currentResult;

    onNumberChange1(event){
        this.firstNumber = event.target.value;
    }

    onNumberChange2(event){
        this.secondNumber = event.target.value;
    }

    onAdd(){
        this.currentResult = parseInt(this.firstNumber) + parseInt(this.secondNumber);
    }

    onSub(){
        this.currentResult = parseInt(this.firstNumber) - parseInt(this.secondNumber);
    }
    onMultiply(){
        this.currentResult = parseInt(this.firstNumber) * parseInt(this.secondNumber);
    }
    onDivide(){
        this.currentResult = parseInt(this.firstNumber) / parseInt(this.secondNumber);
    }

}