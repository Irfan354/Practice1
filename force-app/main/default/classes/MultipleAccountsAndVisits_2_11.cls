@RestResource(urlMapping = '/Accounts')
global class MultipleAccountsAndVisits_2_11 {
    
    @HttpPost
    global static List<AccountResponse> createAccountsVisits(List<accountDetails> accs){
        List<Account> accList = new List<Account>();
        List<Visit__c> visList = new List<Visit__c>();
        List<AccountResponse> acrsList = new List<AccountResponse>();
        for(accountDetails ad : accs){
            
            Account acc = new Account();
            acc.Name = ad.accountName;
            acc.Phone = ad.phone;
            accList.add(acc);
        }
        insert accList;
        system.debug('accList'+accList);
        Set<Id> accIds = new Set<Id>();
        for(accountDetails ad : accs){
            for(visitRecords vr : ad.visits){
                Visit__c vt = new Visit__c();
                vt.Visit_Date__c = vr.visitDate;
                vt.Account__c = accList.get(0).Id;
                visList.add(vt);
            }
        }
        insert visList;
        
        for(Account a : accList){
            AccountResponse ar = new AccountResponse();
            try {
                ar.id = a.Id;
                acrsList.add(ar);  
            } catch (Exception ex) {
                ar.error = ex.getMessage();
                acrsList.add(ar);
            }
        }
        return acrsList;
    }
    
    global class accountsList{
        global List<accountDetails> accs;
        
    }
    
    global class accountDetails{
        global String accountName;
        global String phone;
        global List<visitRecords> visits;
    }
    
    global class visitRecords{
        global date visitDate;
        global id accountid;
    }
    
    global class AccountResponse{
        global String id;
        global String error;
    }
}