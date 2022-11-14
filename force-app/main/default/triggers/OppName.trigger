trigger OppName on Opportunity (before insert, before update) {
    System.debug('trigger new:' + Trigger.new);
    System.debug('size :' + Trigger.new.size());
    // If it is before insert trigger => it is a new opportunity
    if(Trigger.isBefore && Trigger.isInsert) {
        // then update the initial value of Amount to 0, if it is null.
        List<Opportunity> newOpportunities = Trigger.new;
        for(Opportunity opty : newOpportunities) {
            if(opty.Amount == null) {
	        	opty.Amount = 0;    
            }
        }
    }
    
    // More code here to:
    // 1. Check if stagename has changed
    // 2. If stagename has changed, then add 1000 to the Amount.
    // WRITE YOUR CODE HERE:
    if(Trigger.isBefore && Trigger.isUpdate) {
	    // Only be executed when something is updated
	    List<Opportunity> oldOpportunities = Trigger.old;
        List<Opportunity> newOpportunities = Trigger.new;
        System.debug('newOpportunities :' + newOpportunities);
        System.debug('oldOpportunities :' + oldOpportunities);
        Opportunity oldOpp = oldOpportunities.get(0); //[0]
        Opportunity newOpp = newOpportunities.get(0);
        if(oldOpp.StageName != newOpp.StageName) {
            System.debug('stagename has changed from ' + oldOpp.StageName + ' to ' + newOpp.StageName);
            System.debug('opty amount is :' + newOpp.Amount);
            newOpp.Amount = oldOpp.Amount + 1000;
        }
    }
	System.debug('final opty is :' + Trigger.new.get(0));
}