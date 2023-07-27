({
	handlevent : function(component, event, helper) {
		var msg= event.getParam("message");
        var mnum= event.getParam("Number");
        component.set("v.MessageNotifier",msg);
	}
})