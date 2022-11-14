import { LightningElement,api,track } from 'lwc';
import addStudent from '@salesforce/apex/StudentOperationsController.studentlist';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class StudentOperationsTestLwc extends LightningElement {
    @api recordId;
    @track name;
    @track fathersName;
    @track telugu;
    @track hindi;
    @track english;
    @track maths;
    @track science;
    @track social;
    @track afterSave = false;

    valueChanged(event) {
        var inputTypeName = event.target.label;
        console.log('@@@@@ Input Event TValue @@@@@@@ '+inputTypeName);

        if(inputTypeName == 'name') {
            this.name = event.detail.value;
            console.log('@@@@@ Name @@@@@@@ '+this.name);
        }
        if(inputTypeName == 'Fathers Name') {
            this.fathersName = event.detail.value;
            console.log('@@@@@ Fathers Name @@@@@@@ '+this.fathersName);
        }
        if(inputTypeName == 'Telugu') {
            this.telugu= event.detail.value;
            console.log('@@@@@ Name @@@@@@@ '+this.telugu);
        }
        if(inputTypeName == 'English') {
            this.english = event.detail.value;
            console.log('@@@@@ Name @@@@@@@ '+this.english);
        }
        if(inputTypeName == 'Hindi') {
            this.hindi = event.detail.value;
            console.log('@@@@@ Name @@@@@@@ '+this.hindi);
        }
        if(inputTypeName == 'Maths') {
            this.maths = event.detail.value;
            console.log('@@@@@ Name @@@@@@@ '+this.maths);
        }
        if(inputTypeName == 'Science') {
            this.science = event.detail.value;
            console.log('@@@@@ Name @@@@@@@ '+this.science);
        }
        if(inputTypeName == 'Social') {
            this.social = event.detail.value;
            console.log('@@@@@ Name @@@@@@@ '+this.social);
        }
     }
    handleOnSave() {
        console.log('@@@@@@@@ Name @@@@@@@'+this.name);
        console.log('@@@@@@@@ Fathers Namw @@@@@@@'+this.fathersName);
        addStudent({name: this.name, fathersName : this.fathersName, telugu : this.telugu, hindi : this.hindi, english : this.english,
        maths : this.maths, science : this.science, social : this.social })
                        .then(result => {
                            if(result==true) {
                                 this.dispatchEvent(
                                        new ShowToastEvent({
                                            title: 'Success!!',
                                            message: "Student Record Created Successfully.",
                                            variant: 'success'}),);
                            }
                        })
                        .catch(error => {})
    }
    handleOnDelete() {
 
    }
    handleOnUpdate() {

    }
}