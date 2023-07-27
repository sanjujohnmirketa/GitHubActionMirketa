trigger AccountTrigger on Account (before Delete) {
    
    If(Trigger.IsBefore==True && Trigger.Isdelete==True){
        AccountClass.DeleteCheck(Trigger.new);
    }

}