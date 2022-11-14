public class BoredActivityClient {
    
    public void getBoredActivity(){
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setEndpoint('https://www.boredapi.com/api/activity');
        
        HttpResponse res = h.send(req);
        system.debug('response :' + res);
        Integer statusCode = res.getStatusCode();
        system.debug('status :' + statusCode);
        String body = res.getBody();
        system.debug('body : ' + body);
        
        //for headers
        List<String> headers = res.getHeaderKeys();
        for(String hh : headers){
            system.debug('head' + hh);
            system.debug('header value :' + res.getHeader(hh));
        }
        
        //prcess the response by deserializing  - conversion
        BoredActivityApi ba = (BoredActivityApi)Json.deserialize(body,BoredActivityApi.class);
        system.debug('activit ' + ba);
        //whatever we are getting the data from api - we are storing the instance in db
        storeBoredActivity(ba.Activity,ba.type, ba.participants, ba.price, ba.link, ba.key, ba.accessibility); 
    }
    
    // to store the data we need to insert the data
    public void storeBoredActivity(String Activity, String type, Integer participants, Decimal price,
                                   String link, String key, Decimal accessibility){
                                       BoredActivity__c bc = new BoredActivity__c();
                                       bc.Access__c = accessibility;
                                       bc.Activity__c = Activity;
                                       bc.Type__c = type;
                                       bc.Participants__c = participants;
                                       bc.Price__c = price;
                                       bc.Link__c = link;
                                       bc.Key__c = key;
                                       insert bc; //string this in our db
                                   }
    
    // create a class for the instancce of objct
    public class BoredActivityApi{
        public String Activity;
        public String type;
        public Integer participants;
        public Decimal price;
        public String link;
        public String key;
        public Decimal accessibility;
    }
}