Public Class MyClass1 {

	Private Account acctvar;
	Public string Message{get;set;}
	Public string VariableForStoringAccountName{get;set;}
	
	Public MyClass1(ApexPages.StandardController stdController) {
		//anycode
		}
		
	Public void ShowGreeting() {
		Message = 'Welcome to Extension demo';
	}
	
	Public void mysave(){
	
		Account VarNew = new Account();
		VarNew.Name = VariableForStoringAccountName;
		VarNew.Industry = 'Chemical' ;
		
		Insert VarNew;
	}
}