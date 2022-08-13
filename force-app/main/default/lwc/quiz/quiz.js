import { LightningElement } from 'lwc';
export default class QuizApp extends LightningElement {
    selected={} // for storing answers
    correctAnswers = 0 //to show the number of correct answers
    isSubmitted = false // use to show the result
    myQuestions=[
        {
            id:"Question1",
            question:"Which one of the following is not a lightining component type?",
            answers:{
                a:"LWC",
                b:"Aura",
                c:"React"
            },
        correctAnswer:"c"
        },
        {
            id:"Question2",
            question:"Which of the file is not in LWC component folder?",
            answers:{
                a:".svg",
                b:".apex",
                c:".js"
            },
        correctAnswer:"b"
        },
        {
            id:"Question3",
            question:"Which one of the following is not a template tag directive?",
            answers:{
                a:"for:each",
                b:"if:true",
                c:"@api"
            },
        correctAnswer:"c"
        }
    ]
// changeHandler get's called on every click on the options
changeHandler(event){
    const {name, value} = event.target
    this.selected={...this.selected, [name]:value}
}
//form submit handler
submitHandler(event){
    event.preventDefault()
    let correct = this.myQuestions.filter(item=>this.selected[item.id] ===item.correctAnswer)
    this.correctAnswers = correct.length
    this.isSubmitted = true
}
//form reset handler
resetHandler(){
    this.selected ={}
    this.correctAnswers=0
    this.isSubmitted = false
}
}