public class CatFactClient_21_10 {

    public void getFacts(){
       Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setEndpoint('https://catfact.ninja/fact');
        
        HttpResponse res = h.send(req);
        System.debug('res :' + res);
        Integer statusCode = res.getStatusCode();
        System.debug('statusCode :' + statusCode);
		String body = res.getBody();
        System.debug('body :' + body);
        
        //process the response
        catFact cft = (catFact)Json.deserialize(body,catFact.class);
        system.debug('rsponse cft:' + cft);
        //store the object fact
      storeCatFact(cft.fact,cft.length);
    }
    
    //to get the data from db we need to insert the data by creating the method
    public void storeCatFact(String fact, Integer length){ 
        CatFactClient__c cf = new CatFactClient__c(); // intialize the object, save the data into object
        cf.Fact__c = fact;
        cf.Length__c = length; 
        insert cf;
    }
    
    //to convert sring into an object we have to create a class simliar to the data structure at response
    public class catFact{
        public String fact;
        public Integer length;
    }
}