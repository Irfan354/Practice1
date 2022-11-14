trigger HouseLayoutTrigger on House__c (before insert,before update) {

    if(Trigger.isBefore ){
        
    }if(Trigger.isInsert || Trigger.isUpdate){
        HouseLayout.HouseMethod(trigger.new);
    }


}