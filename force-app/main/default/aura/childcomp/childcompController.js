({
	fireEvent : function(component, event, helper) {
		var childevnt=component.getEvent("compEvent");
        var msgstring=component.get("v.messagestring");
        msgstring=$A.util.isEmpty(msgstring) ? "No Message Passed": msgstring;
        
        childevnt.setParam("message",msgstring);
        
        childevnt.fire();
    }
})