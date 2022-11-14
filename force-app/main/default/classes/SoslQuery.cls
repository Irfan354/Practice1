public class SoslQuery {
    public void SoslMethod(){
        List<List<sObject>> searchList = [FIND 'Shaik' IN ALL Fields RETURNING Account(Name), Contact(FirstName,LastName,Email)];
        
        List<Account> accList = new List<Account>();
        List<Contact> conList = new List<Contact>();
        
        accList = (List<Account>) searchList[0];
        conList = (List<Contact>) searchList[1];
        
        for(Account acc : accList){
            system.debug('acc : '+acc.Name);
        }
        for(Contact con: conList){
            system.debug(con.FirstName+':'+con.LastName);
        }
    }
}