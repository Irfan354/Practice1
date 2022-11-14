global class Cl_2610_SchedulableApex implements Schedulable {

    public void execute(SchedulableContext sc){
        //can do the batch
        List<Patient__c> pt = [select id,Name,Patient_FirstName__c from Patient__c];
         List<Patient__c> pat = new List<Patient__c>();
        for(Patient__c p:pt){
            p.Patient_FirstName__c = 'batch apex';
            pat.add(p);
        }
        if(!pat.isEmpty()){
            update pat;
        }
          
    }
}