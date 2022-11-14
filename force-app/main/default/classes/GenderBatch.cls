public class GenderBatch implements  Database.Batchable<sObject>, Database.Stateful {

     public Database.QueryLocator start(Database.BatchableContext bc){
        system.debug('In start method');
        return Database.getQueryLocator('Select id,Name,Gender_c from contact where firstName != null and Gender_c = NULL LIMIT 100');
    }
    
     Public void execute(Database.BatchableContext bc,List<Contact> conList){
        List<Id> contactIds = new List<Id>();
         
         for(Contact c: conList){
             contactIds.add(c.id);
         }
         system.debug('msg from batch');
         ContactApiCallout.findAndSaveGenderForMultipleContacts(contactIds);
     }
    
    public void finish(database.BatchableContext bc){

        system.debug('In finish Method');
    }
}