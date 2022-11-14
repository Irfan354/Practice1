public class NameGenderFinderMock implements HttpCalloutMock {
    public Boolean isError = false;
    public Integer numOfCalls = 0;

    public HttpResponse respond(HttpRequest req) {
        System.debug('req :' + req);
        System.debug('req body :' + req.getBody());
        numOfCalls++;
        
        HttpResponse resp = new HttpResponse();
        
        if(isError) {
            resp.setStatusCode(400);
            resp.setStatus('Bad Request');
            resp.setBody('{"error": "something is wrong"}');
        } else {
            resp.setStatus('OK');
            resp.setStatusCode(200);
            resp.setBody('{"count": 2910,"gender": "male","name": "Virat","probability": 1}');
        }
        
        return resp;
    }
}