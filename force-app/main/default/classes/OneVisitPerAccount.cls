public class OneVisitPerAccount {

    public static void oneVisitPerDay(List<Visit__c> triggerNew){
        Set<Id>parentIds = new Set<Id>();
        for(Visit__c vs : triggernew){
            if(vs.Account__c != Null){
                parentIds.add(vs.Account__c);
            }
        }
        Map<id,Visit__c>visitMap = New Map<Id,Visit__c>([select id,Name,Is_Visit__c,Account__c,CreatedDate from Visit__c where Account__c In:parentIds order By createdDate DESC Limit 1]);
        for(Visit__c newRec : triggernew)
        {
           for(Visit__c oldRec: visitMap.values())
           {
             if(newRec.CreatedDate != oldRec.CreatedDate)
             {
                newRec.addError('Cannot create New Vist because there\'s another one created on this date.'); 
             }
           }
        }
    }
}