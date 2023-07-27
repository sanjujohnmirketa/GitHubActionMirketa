public class budgetingClass {
    public static void Budget(Map<Id,Account>oldAccount,Map<id,Account> newacccounts){
        Map<Id,Integer> acctobudgetMap = new Map<Id,Integer>();
        set<id> accset=new set<id>();
        List<Account> ac1 = new List<Account>();
        for(Id tempId : newacccounts.keyset())
        {	
            if(newacccounts.get(tempId).name!=oldAccount.get(tempId).name){//compare budget field whether they've been changed or not
                acctobudgetMap.put(tempId,newacccounts.get(tempId).NumberOfEmployees);//Instead of No. of Employees use budget field
                accset.add(tempId);
            }
        }
        
        
        
        For(Account tempacc:[SELECT Id,(SELECT Id,name From Contacts WHERE DoNotCall=true) FROM Account WHERE id IN:accset]){//instead of DoNotCall 
        //use Use_Marketing_Budget__c == true   && Use_Sales_Budget__c== false
            for(Contact cont1:tempacc.Contacts){
                decimal marPrice=0.4;//multiply by tempacc*0.4/tempacc.Contacts.size();
                //now write your logic here pick the value from newmap account of budget(newaccounts.get(tempacc.id).Budget/num*.4 marketing budget multiply 
                //b)
                //cont1.budget__c=marPrice;
            }
        }
        
        For(Account tempacc: [SELECT Id,(SELECT Id,name From Contacts WHERE DoNotCall=false) FROM Account WHERE id IN:accset])//instead of DoNotCall 
        //use Use_Marketing_Budget__c == false   && Use_Sales_Budget__c== true
        {
            //write the logic for salesbudget
        }
    }

}