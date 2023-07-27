public class ElecDevClass {
    public static void GetDiscount(list <ElectronicDevice__c> TemVarList){
        for (ElectronicDevice__c VarP : TemVarList){
            if(VarP.Type__c == 'CRT'){
                VarP.Price__c= VarP.Price__c - (.5* VarP.Price__c);
            }
        
            if(VarP.Type__c == 'LCD'){
                VarP.Price__c= VarP.Price__c - (.3* VarP.Price__c);
            }
            
            if(VarP.Type__c == 'LED'){
                VarP.Price__c= VarP.Price__c - (.2* VarP.Price__c);
            }
        }
    }

}