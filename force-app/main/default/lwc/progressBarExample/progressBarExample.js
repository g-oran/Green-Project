import { LightningElement } from 'lwc';

export default class ProgressBarExample extends LightningElement {
    progress = 0;
    firstName = "";
    lastName = "";
    birthDate = "";
    emailAddress = "";
    mobile = "";


    handleChange(event){
        const field = event.target.name;
        if(field === "firstName"){
            this.firstName = event.target.value;
        }
        else if(field === "lastName"){
            this.lastName = event.target.value;
        }
        else if(field === "birthDate"){
            this.birthDate = event.target.value;
        }
        else if(field === "emailAddress"){
            this.emailAddress = event.target.value;
        }
        else if(field === "mobile"){
            this.mobile = event.target.value;
        }

        this.fieldsCompleted();
    }

    fieldsCompleted(){
        var numVal = 0;
        if(this.firstName != null && this.firstName != ""){
            numVal = numVal + 1;
        }
        if(this.lastName != null && this.lastName != ""){
            numVal = numVal + 1;
        }
        if(this.birthDate != null && this.birthDate != ""){
            numVal = numVal + 1;
        }
        if(this.emailAddress != null && this.emailAddress != ""){
            numVal = numVal + 1;
        }
        if(this.mobile != null && this.mobile != ""){
            numVal = numVal + 1;
        }


        this.progressBar(numVal);
    }


    progressBar(numVal){
        this.progress = numVal * 20;
    }


    handleReset(){
        this.progress = 0;
        this.firstName = "";
        this.lastName = "";
        this.birthDate = "";
        this.emailAddress = "";
        this.mobile = "";
    }

    handleSubmit(){
        alert("Submit has been clicked!")
    }
}