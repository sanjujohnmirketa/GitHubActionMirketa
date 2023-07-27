public class Naming {
    public string FirstName{set;get;}
    public string LastName{set;get;}
    public string Message{set;get;}
    
    public void Message1(){
        
        Message= 'The Name is ' + FirstName;
    }
    
    public void Message2(){
        
        Message= 'The Full Name is ' + FirstName +' ' +  LastName;
    }

    public void Reset(){
        
        Message= ' ' ;
        FirstName= ' ';
        LastName= ' ';
     }
}