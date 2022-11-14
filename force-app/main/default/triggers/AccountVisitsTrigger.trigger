trigger AccountVisitsTrigger on Visit__c (after insert, after update) {
   //when we entered the record the latest one should get true 
    if(Trigger.isAfter){
        if(Trigger.isInsert || Trigger.isUpdate){
            AccountVisitHandler.recentRecordIsLatestSetToTrue(trigger.new);
        }
        
    }
}