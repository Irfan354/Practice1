trigger ContactTriggerApi on Contact (after insert) {

    /* if(trigger.isAfter && trigger.isInsert){
        List<Id>conId = new List<Id>();
        for(Contact con:trigger.new){
            conId.add(con.id);
        }
        ContactApiCallout.contactApiMethod(conId);
    }*/
}