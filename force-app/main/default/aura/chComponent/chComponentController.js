({
    fireEvent : function(component, event, helper) {
        console.log('msgString');
        //Create the event 
        var childEvent= component.getEvent("cmpEvent");
        var msgString = component.get("v.messageString");
        msgString=$A.util.isEmpty(msgString) ? "No Message Passed" : msgString;
        
        childEvent.setParam("message",msgString);
        
        //fire the event
        childEvent.fire();
    }
})