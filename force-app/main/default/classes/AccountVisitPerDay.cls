public class AccountVisitPerDay {

    public Database.QueryLocator start(Database.BatchableContext bc){
        system.debug('In Start Method');
        return Database.getQueryLocator('SELECT id,Visit_Date_c,Customerc FROM Visit_c');  
    }
    public void execute(Database.BatchableContext bc,List<Visit__c>visitList){
        system.debug('In Execute method:'+visitList.size());
        Set<Id>AccountIds = new Set<Id>();
        for(Visit__c vis : visitList){
               AccountIds.add(vis.Account__c);  
          
        }
        List<Visit__c>vList = [SELECT id,Visit_Date__c,Account__c FROM Visit__c WHERE Account__c IN : AccountIds ORDER BY Visit_Date__c DESC,CreatedDate DESC Limit 5000];
        Map<string,Visit__c>LatestVisit = new Map<string,Visit__c>();
        
        List<Visit__c>deleteVisit = new List<Visit__c>();
        for(Visit__c visits : vList){
            string key=visits.Account__c +':'+ visits.Visit_Date__c;
            if(LatestVisit.containskey(key)){
                deleteVisit.add(visits);
            }
            else
            {
                LatestVisit.put(key,visits);
               
            }
        }
           delete deleteVisit; 
     
    }
    public void finish(Database.BatchableContext bc){
     system.debug('In finish Method');   
    }
}