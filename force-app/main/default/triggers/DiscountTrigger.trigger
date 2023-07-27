trigger DiscountTrigger on Mobiile__c (before insert) {
    MobileClass.GetDiscount(Trigger.new);
}