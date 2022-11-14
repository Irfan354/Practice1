public class DmlOperations {
    public void DmlMethods(){
        //Inserting records
        //creating individual records
       // Account acc1 = new Account(Name = 'Shaik irfan1',Phone = '123445'); //two dml will counted.
        //Account acc2 = new Account(Name = 'Shaik irfan2',Phone = '23445');
       
        //using list methd for creating records - here dml count wll be 1
       /* List<Account> accList = new List<Account>();
        Account acc1 = new Account(Name = 'Shaik irfan1',Phone = '123445'); 
        Account acc2 = new Account(Name = 'Shaik irfan2',Phone = '23445');
		accList.add(acc1) ;
        accList.add(acc2); 
        insert accList;*/
        
        //creating related records
       /* Account acc = new Account(Name='Irfan',Phone='456687');
        insert acc;
        Contact con = new Contact (FirstName='Hajee',LastName='Irfan',Phone='456687',AccountId=acc.Id);
        insert con;*/
        
        //updating the records
        /*Account acc = [SELECT Id,Name,Phone From Account Where Name='Irfan'];
        acc.Phone = '89898';
        update acc;*/
        
        //updating related rcords
     /* Contact con = [SELECT Id,FirstName,LastName,Phone,Account.Phone From Contact Where FirstName = 'Hajee' AND LastName='Irfan'];
        con.Phone = '96969';
        con.Account.Phone = '22222';
        update con;
        update con.Account; */
        
        //Upsert Recrds - 1.new record will be created & Existing record will be updated - we use list here
     /*  List<Account> accList = new List<Account>();
        Account acc01 = new Account(Name='sk',Phone='96969');
        Account acc02 = [SELECT Id,Name,Phone From Account Where Name='Irfan'];
        acc02.Phone ='61161';
        accList.add(acc01);
        accList.add(acc02);
        upsert accList;*/
        
        //Delete account
        List<Account> deletedAcc = [SELECT Id,Name,Phone From Account Where Name = 'Shaik irfan2' ALL ROWS];
        undelete deletedAcc;
        
        //Try DMLException when DML opertions failed.
        try{
            Account acc = new Account();
            insert acc;
        }
        catch(DMLException e){
            system.debug('eception'+e.getMessage());
        }
    }
}