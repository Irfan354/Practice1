public class DatabaseClassMethods {

    public void DbMethods (){
        //create a list o f contacts
        List<Contact> conList = new List <Contact>{new Contact(FirstName = 'sk',LastName='Irfan'),
            new Contact(FirstName='Shaik',LastName='irfan'), new Contact()
        };
            //Bulk insert with one Dml call
            Database.SaveResult[] srList =  Database.insert(conList,false);
        
        //iterate through each returned result
        for (Database.SaveResult sr : srList){
            if(sr.isSuccess()){
                system.debug('succesfuly insertedd contact contactId :' + sr.getId());//operation was successsful so get the id of record insertd
            }else{
                //else operation failed get all errors
                for(Database.Error err : sr.getErrors()){
                system.debug('error ocured');
                system.debug(err.getStatusCode()+':'+err.getMessage());
                system.debug('contact field error'+ err.getFields());
                }
            }
        }
        
        
    }
}