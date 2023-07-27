trigger AccountPracTrigger on Account (after Update) {
		
    If(Trigger.Isupdate && Trigger.IsAfter){
        AccountPracClass.PractMethod(Trigger.new);
    }
}