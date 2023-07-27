Public with sharing class ExampleClass {
    
   
    public string FirstName {set;get;}
    public string MiddleName {set;get;}//initially blank
    public string LastName {set;get;}
    public string Messages {set;get;} //initially blank
    
    Public void ShowMessage (){
        
        Messages = 'Welcome' +' ' + Firstname + MiddleName + LastName;
    }
}