public class OneVisitPerAccountParent {

    public static void oneVisitPerdayPerParent(List<Visit__c> triggerNew){
       List<Visit__c> visitList = new List<Visit__c>();
        Set<Id>parentIds = new Set<Id>();
        for(Visit__c vs : triggernew){
            if(vs.Account__c != Null){
                parentIds.add(vs.Account__c);
            }
        }
        List<Visit__c>vList = New List<Visit__c>([select id,Name,Is_Visit__c,CreatedDate,CreatedById,Account__c from Visit__c where CreatedDate=TODAY AND Account__c In:parentIds]);
        for(Visit__c vsList:vList){
            system.debug('VsList:'+vsList);
            
            if(vList.size() > 0 ){
                trigger.new[0].addError('Cannot create New Vist because there is another one created on this date.');
                
            }
        }
    }
}