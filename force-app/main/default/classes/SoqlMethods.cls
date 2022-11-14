public class SoqlMethods {
    public void SoqlMethod(){
        
      /*  List<Account> accList = new List<Account>();
       // Integer c;
        
        //String stuName='Shaik'; //can use variable and query through here
        
        	// c =[SELECT count() From Account Where Name Like 'Shaik irfan%'];
          // accList =[SELECT Id, Name FROM Account WHERE Name = 'Shaik irfan' ORDER By Name];// order in ascending order
        
        
           accList =[SELECT Id, Name,(SELECT Id,Name FROM Contacts) FROM Account WHERE Name = 'Shaik irfan' ];// parent to child 
        
      /*  if(!accList.isEmpty()){ //we can check null point 
            for(Account acc :accList ){ // we can iterate here
                for  (Contact con :acc.Contacts)//p-child 
            }
        }*/
        //system.debug('order :'+ accList);
        
        //Child  to parent with cstom obj
        List<Books__c> bookList = new List<Books__c>();
        bookList = [SELECT Id,Name,Student__c FROM Books__c WHERE Name='Probability' ];
        
        system.debug('bklst'+bookList);
        
        
    }
}