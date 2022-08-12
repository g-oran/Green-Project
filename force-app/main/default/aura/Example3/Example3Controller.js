({
    myAction : function(component, event, helper) {
        var target = event.getSource();
        component.set("v.text", target.get("v.label"));
    }
})