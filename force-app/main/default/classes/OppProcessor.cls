public class OppProcessor implements Database.Batchable <sObject>, Database.stateful{
   
        public integer recordCount = 0;

        public Database.QueryLocator start(Database.BatchableContext bc){
            return Database.getQueryLocator([SELECT Id, Name FROM Opportunity]);
        }

        public void execute(Database.BatchableContext bc, List<Opportunity> opps){
            for (Opportunity op : opps){
                op.LeadSource = 'web';
            }

            update opps;
            recordCount = recordCount + opps.size();
        }

        public void finish(Database.BatchableContext bc){
            system.debug('Total records processed' + recordCount);
        }
    
}