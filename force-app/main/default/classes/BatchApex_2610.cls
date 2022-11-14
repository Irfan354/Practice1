public class BatchApex_2610 implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext Bc){
        String query = 'select id, name, Patient_FirstName__c,Patient_Email__c from Patient__c';
        return Database.getQueryLocator(query);
    }
    public void execute (Database.BatchableContext Bc, List<Patient__c> obj){
        List<Patient__c> pat = new List<Patient__c>();
        for(Patient__c p:obj){
            p.Patient_FirstName__c = 'batch apex';
            pat.add(p);
        }
        if(!pat.isEmpty()){
            update pat;
        }
          
    }
    public void finish (Database.BatchableContext Bc){
        
    }
}