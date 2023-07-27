trigger DeleteTrigger on Account (before insert) {
    
    if(Trigger.isdelete == True && Trigger.isbefore== True){
        AccountClass.DeleteCheck(Trigger.old);
    }
}