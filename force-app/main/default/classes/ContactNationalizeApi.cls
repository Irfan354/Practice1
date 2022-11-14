public class ContactNationalizeApi{
    
    public void multipleContacts(){
        List<Contact> conList = new List<Contact>();
        for(Integer i=0; i<10; i++){
            
            Http h = new Http();
            HttpRequest req = new HttpRequest();
            req.setMethod('GET');
            req.setEndpoint('https://randomuser.me/api/');
            
            HttpResponse res = h.send(req);
            Integer statusCode = res.getStatusCode();
            String body = res.getBody();
            system.debug('code' + statuscode);
            system.debug('body' + body);
            
            //process the response
            MainDetails md = (MainDetails) Json.deserialize(body, MainDetails.class);
            system.debug('main details' + md);
            
            //decalring following attributes
            String firstName;
            String lastName;
            String gender;
            String location;
            String title;
            String first;
            String last;
            String street;
            String city;
            String state;
            String country;
            String numbers;
            
            for(PersonalDetails pd : md.results){
                FirstName = pd.name.first;
                LastName = pd.name.last;
                Gender = pd.gender;
            }
            
        }
    }
    
    public class MainDetails{
        List<PersonalDetails> results;
    }
    
    public class PersonalDetails{
        public string gender;
        public nameDetails name; 
        public locationDetails location;
    }
    
    public class nameDetails{
        public string title;
        public string first;
        public string last;
    }
    
    public class locationDetails{
        public streetDetails street;
        public string city;
        public string state;
        public string country;
    }
    
    public class streetDetails{
        public string name;
        public Integer numbers;
    }
}