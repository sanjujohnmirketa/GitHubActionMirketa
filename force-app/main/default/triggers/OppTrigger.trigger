trigger OppTrigger on Opportunity (before Update){
    
    Map <id,Opportunity> OppMap = Trigger.OldMap;
	
	For(Opportunity OppNew : Trigger.new)
			If(OppMap.get(OppNew.id).StageName !='Closed won' && OppNew.StageName !='Closed one'){
			
			OppNew.CloseDate = System.today();
			
			OppNew.type = 'New Customer';
		}
}