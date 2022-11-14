trigger TriggerHandler on Account (after insert) {
    if(Trigger.isInsert){
        if(Trigger.isBefore){
		AccountTrigger.AccountTriggerMethod(Trigger.new);
        }else if(Trigger.isAfter){
            
        }
    }
}