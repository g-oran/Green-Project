trigger testnew on Account (before update, before insert) {
	
    if (Trigger.isBefore && Trigger.isUpdate){
        TriggerHandler.triggerMethod1();
    }
    else if(Trigger.isBefore && Trigger.isInsert){
        TriggerHandler.triggerMethod2();
    }
}