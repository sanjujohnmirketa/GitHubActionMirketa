// JavaScript Module: demo.js
// JavaScript Module demo2.js
import { LightningElement } from 'lwc';
export default class Demo2 extends LightningElement {
    text = '';
    handleChange(event){
        this.text = event.target.value;
     }
}