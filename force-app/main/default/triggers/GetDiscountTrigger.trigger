trigger GetDiscountTrigger on ElectronicDevice__c (before insert) {
    
    if (Trigger.isbefore == True && Trigger.isinsert ==True){
        ElecDevClass.GetDiscount(Trigger.new);
    }

}