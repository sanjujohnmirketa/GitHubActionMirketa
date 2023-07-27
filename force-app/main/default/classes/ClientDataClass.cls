public class ClientDataClass {
    public string UserFirstName{set;get;}
    public string UserLastName{set;get;}
    public string Message{set;get;}
    
    public ClientDataClass(Apexpages.standardController stdcontroller){
        //any code
    }
    
    public void ShowGreeting(){
        Message='Showing Greeting messages';
    }
    
    public void Leadentry(){
        
        Lead VarT = new Lead();
        VarT.FirstName = UserFirstName;
        VarT.LastName = UserLastName;
        VarT.Company = 'Wipro';
        
        insert VarT;
    }

}