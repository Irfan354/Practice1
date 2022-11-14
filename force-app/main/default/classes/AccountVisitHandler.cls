public class AccountVisitHandler {

        public static void recentRecordIsLatestSetToTrue(List<Visit__c>triggernew){
        List<Visit__c> visitList = new List<Visit__c>();
        Set<Id>parentIds = new Set<Id>();
        for(Visit__c vs : triggernew){
            if(vs.Account__c != Null){
                parentIds.add(vs.Account__c);
            }
        }
        Map<id,Visit__c>visitMap = New Map<Id,Visit__c>([select id,Name,Is_Visit__c,Account__c from Visit__c where Account__c In:parentIds AND Is_Visit__c = true AND id NOT in:triggernew]);
        for(Visit__c vv : visitMap.values()){
            vv.Is_Visit__c = false;
            visitList.add(vv);  
            vv.addError('You can insert only 1 Visit per Account per day');
        }
        update visitList;
        }
    
}