public class contactFirstApiCall {

    @future(callout = true)
    public static void findAndSaveGenderSingleContact(Id contactId){
        //fetch the contact
        Contact con = [SELECT Id,FirstName,	Gender__c From contact where id = :contactId Limit 1];
        
        //invoke the api for fetching
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setMethod('Get');
        req.setEndpoint('https://api.genderize.io/?name=');
        
        HttpResponse res = h.send(req);
        system.debug('rsponse'+res);
        Integer statusCode = res.getStatusCode();
        system.debug('status' + statusCode);
        String body = res.getBody();
        system.debug('body' + body);
        
        //get the response
		Gender gen = (Gender) Json.deserialize(body, Gender.class);      
        //store the response
        con.Gender__c = gen.gender;
        
    }
    
    public class Gender{
        public String gender;
    }
}