trigger myTrigger1 on Account (before insert) {
    for(Account x: Trigger.new){
        x.Description = 'Field updated by Trigger';
    }
}