trigger AccountAddressTrigger on Account (before insert, before update) {

      
        for(Account account : Trigger.new){
            If (account.Match_Billing_Address__c == true)  {
            account.ShippingPostalCode = Account.BillingPostalCode;
        }   
    } 

    

}