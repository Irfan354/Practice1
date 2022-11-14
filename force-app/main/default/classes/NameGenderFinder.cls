public class NameGenderFinder {
    
    @future(callout=true)
    public static void findAndSaveGenderForSingleContact(Id contactId){
        // 1. Fetch the name
        Contact con = [SELECT Id, FirstName, Gender__c FROM Contact WHERE Id = :contactId LIMIT 1];
        
        // 2. Invoke the api for fetching the gender
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setEndpoint('https://api.genderize.io/?name=' + con.FirstName);
        
        HttpResponse resp = h.send(req);
        Gender gen = (Gender) JSON.deserialize(resp.getBody(), Gender.class);
        
        // 3. Save the gender on the contact
        con.Gender__c = gen.gender;
        update con;
    }
    
    @future(callout=true)
    public static void findAndSaveGenderForMultipleContacts(List<Id> contactIds){
        // 1. Fetch the name
        List<Contact> contacts = [SELECT Id, FirstName, Gender__c FROM Contact WHERE Id IN :contactIds];
        Map<String, String> firstNameToGenderMap = new Map<String, String>();
        
        for(Contact loopContactVariable : contacts) {
            if(firstNameToGenderMap.containsKey(loopContactVariable.FirstName)) {
                loopContactVariable.Gender__c = firstNameToGenderMap.get(loopContactVariable.FirstName);
            } else {
                // 2. Invoke the api for fetching the gender
                Http h = new Http();
                HttpRequest req = new HttpRequest();
                req.setMethod('GET');
                req.setEndpoint('https://api.genderize.io/?name=' + loopContactVariable.FirstName);
                
                HttpResponse resp = h.send(req);
                Gender gen = (Gender) JSON.deserialize(resp.getBody(), Gender.class);
                
                // 3. Save the gender on the contact
                loopContactVariable.Gender__c = gen.gender;
                firstNameToGenderMap.put(loopContactVariable.FirstName, gen.gender);
            }
        }
        
        // 4. DML statement as a single DML instead of being in for loop
        System.debug('final update :' + contacts);
        update contacts;
    }
    public class Gender{
        public string gender; 
    }
}