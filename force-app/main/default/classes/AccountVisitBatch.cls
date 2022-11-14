public class AccountVisitBatch {
Set<Id> latestVisit = new Set<Id>();
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('SELECT id,CreatedDate FROM Account');  
    }
    public void execute(Database.BatchableContext bc, List<Account>accList){
        List<Visit__c>deleteVisit = new List<Visit__c>();
        Set<Id>AccountIds = new Set<Id>();
        for(Account acc : accList){
            
               AccountIds.add(acc.Id);    
        }
        
        for(Visit__c visits : [SELECT id,Visit_Date__c,Account__c FROM Visit__c WHERE Account__c IN : AccountIds ORDER BY Visit_Date__c DESC]){
            if(latestVisit.contains(visits.Account__c)){
                deleteVisit.add(visits);
            }
            else{
                latestVisit.add(visits.Account__c);
            }
        }
        if(!deleteVisit.isEmpty()){
           delete deleteVisit; 
        }
    }
    
    public void finish(Database.BatchableContext bc){
        
    }
}