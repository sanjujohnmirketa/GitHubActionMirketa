public class Calculator {
    public integer NumA{set;get;}
    public integer NumB{set;get;}
    public string message{set;get;}

    public void Addition(){
       string result = 'The Sum is ' + (NumA + NumB);
       message = result;
    }
    public void Submission(){
    string result = 'The difference is ' + (NumA - NumB);
    message = result;
    }
    
    public void Multiplication(){
    string result = 'The product is ' + (NumA * NumB);
    message = result;
    }
     
    public void Division(){
    string result = 'The division is ' + (NumA / NumB);
    message = result;
    }

}