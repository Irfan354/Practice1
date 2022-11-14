public class ContactApiCallout {
    
    @future(callout=true)
    public static void findAndSaveGenderForSingleContact(Id contactId){
        set<String> firstName = new Set<String>();
        Contact con = [SELECT Id, FirstName, Gender__c FROM Contact WHERE Id = :contactId LIMIT 1];
        
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setEndpoint('https://api.genderize.io/?name=' + con.FirstName);
        
        HttpResponse resp = h.send(req);
        Gender gen = (Gender) JSON.deserialize(resp.getBody(), Gender.class);
        
        con.Gender__c = gen.gender;
        update con;
    }
    
    @future(callout=true)
    public static void findAndSaveGenderForMultipleContacts(List<Id> contactIds){
       
        List<Contact> contacts = [SELECT Id, FirstName, Gender__c FROM Contact WHERE Id IN :contactIds];
        
        for(Contact loopContactVariable : contacts) {       
        
            Http h = new Http();
            HttpRequest req = new HttpRequest();
            req.setMethod('GET');
            req.setEndpoint('https://api.genderize.io/?name=' + loopContactVariable.FirstName);
            
            HttpResponse resp = h.send(req);
            Gender gen = (Gender) JSON.deserialize(resp.getBody(), Gender.class);
            
           
            loopContactVariable.Gender__c = gen.gender;
        }
        
    
        update contacts;
    }
    
    public class Gender {
        public String gender;
    }
}