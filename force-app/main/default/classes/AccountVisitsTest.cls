@IsTest
public class AccountVisitsTest {
@IsTest
    public static void isLatestCheckboxTrue(){
        Account acc = new Account();
        acc.Name='Test One';
        insert acc;
       
        Visit__c vv = new Visit__c();
        vv.Name='Testnew';
        vv.Is_Visit__c=true;
        vv.Account__c = acc.Id;
        insert vv;
        
        Visit__c vv1 = new Visit__c();
        vv1.Name='Testnew1';
        vv1.Is_Visit__c=true;
        vv1.Account__c =acc.Id;
        insert vv1;
        
        
        
        Visit__c result = [select id,Is_Visit__c from Visit__c where Name ='Testnew'];
        system.assertEquals(false, result.Is_Visit__c);
        
        
    }
  
}