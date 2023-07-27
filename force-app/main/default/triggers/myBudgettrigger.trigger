trigger myBudgettrigger on Account (before insert) {
    if (Trigger.isUpdate)
    {
        if(Trigger.isBefore){
            budgetingClass.Budget(Trigger.oldmap,Trigger.newmap);
        }
    }
}