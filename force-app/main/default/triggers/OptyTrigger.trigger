trigger OptyTrigger on Opportunity (before insert,before update) {
/*Opportunity is inserted => amount is 0
opty is updated from stage Prospecting to Qualification => 1000
opty is updated from Qualification to Needs Analysis	=> 2000
opty closedate is updated => 2000*/
    
    if(trigger.isBefore && trigger.isInsert){
        List<Opportunity> oppList = Trigger.new;
        for(Opportunity op : oppList){
            if(op.Amount == null){
                op.Amount =0;	//1st condn amount = 0;
            }
        }
    }
    
    
    // 1. Check if stagename has changed
    // 2. If stagename has changed, then add 1000 to the Amount.
    // WRITE YOUR CODE HERE:
    if(trigger.isBefore && trigger.isUpdate){
        List<Opportunity> newOpp = trigger.new;
        List<Opportunity> oldOpp = trigger.old;
        Opportunity newOp = newOpp.get(0);
        Opportunity oldOp = oldOpp.get(0);
        if(newOp.StageName != oldOp.StageName){
            newOp .Amount = oldOp.Amount + 1000;
            system.debug('stage name chnaged from ' + oldOp.StageName + 'changed to ' + newOp.stageName);
            system.debug('new amount ' + newOp.Amount);
        }
    }
    System.debug('final opty is :' + Trigger.new.get(0));
}