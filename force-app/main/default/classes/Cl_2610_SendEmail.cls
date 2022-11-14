public class Cl_2610_SendEmail {

    public void sendEmail(String toAddress, String sub, String msg){
        //step 1. call namespace
        Messaging.singleEmailMessage sm = new Messaging.singleEmailMessage();
        
        //step 2 - add the address in the list data type
        List<String> email_toAddress = new List<String>{toAddress};
            List<String> email_ccAddress = new List<String>{toAddress};
               
           //step 3 - compose the email
           sm.setToAddresses(email_toAddress);
           sm.setCcAddresses(email_ccAddress);
        	sm.setSubject(sub);
        	sm.setPlainTextBody(msg);
        
        //step 4 - send an email
        List<Messaging.Email> SE = new List<Messaging.Email>{sm};
            Messaging.sendEmail(SE);
    }
}