public class MobileClass {
    public static void GetDiscount(list <Mobiile__c> MobList){
        for(Mobiile__c VarP: MobList){
            if(Varp.Brand__c == 'Samsung'){
                VarP.Price__c = VarP.Price__c - (.05*VarP.Price__c);
            }
            
            if(Varp.Brand__c == 'Apple'){
                VarP.Price__c = VarP.Price__c - (.15*VarP.Price__c);
            }
        }
        
    }
}