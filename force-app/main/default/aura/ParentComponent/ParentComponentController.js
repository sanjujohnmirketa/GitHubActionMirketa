({
    handlechildEvent : function(component, event, helper) {
        //retrieve the event parameter
        var msg= event.getParam("message");
        component.set("v.MsgfromNotifier",msg);

    }
})