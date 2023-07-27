public class APEXForAction {
    		Public Account acc{get;set;}
			Public boolean showFax{get;set;}
			
			Public APEXForAction(){
				Acc= new Account();
				showFax= false;
			}
			
			Public void PriorityChanged(){
				If(acc.CustomerPriority__c == 'High'){

				ShowFax=TRUE;
                }
                
                else{
                    
                ShowFax=False;
                }
			}
}