public class DemoSobjects {
    public void DemoMethod(){
      
/*        List<Account> accList = new List<Account> (); //using List method - here ull get the deatils in a list manner.
        Set<Id> accIds = new Set<Id>();
		 accList = [SELECT Id,Name From Account Limit 2]; //using soql query retrieving field details from Account Object
        Map<Id,Account> accIdToMap = new Map<Id,Account>(accList); //we can use soql query here([]) or we can assign variable value here() 

        
        	//system.debug('acclist :'+accList);//displyng list values
       			
        if(!acclist.isEmpty()){
        for(Account acc : accList){ //getting the values in accList and retreving in variable 'acc'
            accIds.add(acc.Id); //in accIds variable u r adding the new id as 'acc.Id'
        }
        }
        if(!accIds.isEmpty()){
            for(Id i : accIds){ //iterating set, //containsKey-to check whether a particular key is being mapped into the Map or not
                if(accIdToMap.containsKey(i)){ //getting map value from variable accidtomap and iterating from 'i' vaar
                    system.debug('mapvalue :'+accIdToMap.get(i));
                }
                //system.debug('ids :'+i); //here dsplyng the values from set ID.
            }
        }
        //system.debug('accIds:'+accIds); //displaying the set here*/
        
        //pctc
        List<Account> accList = new List<Account>();
        Set<Id> accIds = new Set<Id>();
        accList = [SELECT Id,Name From Account Limit 2];
        Map<Id,Account> idsToMap = new Map<Id,Account>(accList);
        
        if(!accList.isEmpty()){
            for(Account acc : accList){
                system.debug('lst' + accList);
            }
        }
        
        if(!accIds.isEmpty()){
            for(Id i : accIds){
                if(idsToMap.containsKey(i))
                system.debug('idsToMap:'+idsToMap.get(i));
            }
        }
        
        
        
        
        
        
        
        /* Account acc = new Account();//standard object 
        acc.Name = 'Irfan';
        acc.Phone = '12354';
        system.debug('Acc : '+acc);
        
        Books__c book = new Books__c();//custom objects
        book.Name = 'Diivine';
        book.Category__c = 'Adventure';
        system.debug('books : '+book);*/
    }
}