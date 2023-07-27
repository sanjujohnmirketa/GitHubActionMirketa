public class MarriotClass {
    public string selectedname{get;set;}
    public string FName{get;set;}
    public string LName{get;set;}
    public integer Rating{get;set;}
    
    
    	Public list<Selectoption> getselectedaccnamefields(){
        	list<Selectoption> pickname = new list<selectoption>();
        	pickname.add(new selectoption('','--None--'));	
        	for(Account Acc:[SELECT Id,Name FROM Account WHERE Name LIKE'%Marriot%']){
            	pickname.add(new selectoption(Acc.id,Acc.Name));
    	}
    	Return pickname;
    	}
    
    	Public void GuestContact(){
        	Contact con = new Contact(AccountId= Selectedname,FirstName=FName,LastName=LName,Rating__c= Rating);
            	insert con;
            If(Rating <= 4.5){
            	case Createcase = new case(status= 'New',Origin= 'Web',subject='Follow up with the customer',AccountID=selectedname,ContactId=con.ID);
                	insert Createcase;
        	}
        }      
}