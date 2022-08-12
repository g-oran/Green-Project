import { LightningElement } from 'lwc';

export default class ToDo extends LightningElement {
    TodoId = 0;  //3
    todos = []; // (1, test1), (2, test2), (3, test3)
    taskDetails; //test1 //test2 //test3
    handleChange(event){
      this.taskDetails = event.target.value;
    }
    clickHandler(){
      this.TodoId = this.TodoId + 1;
      this.todos = [...this.todos, {Id: this.TodoId, taskDetails: this.taskDetails}]
    }






}