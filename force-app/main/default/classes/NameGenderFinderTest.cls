// This is the test class so far
@isTest
private class NameGenderFinderTest {
	
    // 1.
    // Given that there is a Contact in Salesforce,
    // When we execute the future call
    // And the web service returns a successful response
    // Then the response gender should be saved on the contact.
    @isTest
    static void findAndSaveGenderForSingleContact_SuccessfulResponse() {
        // Given
		Contact con = new Contact();
        con.FirstName = 'Virat';
        con.LastName = 'Kohli';
        insert con;
        
        String expectedGender = 'male';
        NameGenderFinderMock mock = new NameGenderFinderMock();
        mock.isError = false;
        
        Test.setMock(HttpCalloutMock.class, mock);
        
        // When
        Test.startTest();
		NameGenderFinder.findAndSaveGenderForSingleContact(con.Id);
        Test.stopTest();
        
        // Then
        Contact conAgain = [SELECT Id, Gender__c FROM Contact WHERE Id = :con.Id LIMIT 1];
        System.assertEquals(expectedGender, conAgain.Gender__c, 'Gender response must be equal to the one from API');
    }

	// 2.
	// Given  that there is a Contact in Salesforce,
    // When we execute the future call
    // And the web service returns a failure response
    // Then the contact should not have any gender on it.
	@isTest
    static void findAndSaveGenderForSingleContact_FailureResponse() {
        // Given
		Contact con = new Contact();
        con.FirstName = 'Virat';
        con.LastName = 'Kohli';
        insert con;
        
        NameGenderFinderMock mock = new NameGenderFinderMock();
        mock.isError = true;
        
        Test.setMock(HttpCalloutMock.class, mock);
        
        // When
        Test.startTest();
		NameGenderFinder.findAndSaveGenderForSingleContact(con.Id);
        Test.stopTest();
        
        // Then
 		Contact conAgain = [SELECT Id, Gender__c FROM Contact WHERE Id = :con.Id LIMIT 1];
        System.assertEquals(null, conAgain.Gender__c, 'Gender must be null as API failed');
    }
    
    //3. Multiple contacts
    // 1. Insert 3 contacts as a list. Call this future method which takes multiple contacts
    //    as input. Then those contacts should have appropriate gender based on the response
    //    we send. 
    // 2. Insert 3 contacts as a list. Call this future method which takes multiple contacts
    //    as input. When the webservice fails, then those contacts should have null Gender.
    // 3. Insert 3 contacts with 2 contacts having same name. Call this future method
    //    and there should be only 2 API calls instead of 3.
	// 1 
    @isTest
    static void findAndSaveGenderForMultipleContactsGender(){
        //given
        
        List<Contact> conList = new List<Contact>();
        Contact con1 = new Contact();
        con1.FirstName = 'shaik';
        con1.LastName = 'irfan';
        
        Contact con2 = new Contact();
        con2.FirstName = 'shaik';
        con2.LastName = 'irfan';
        
        Contact con3 = new Contact();
        con3.FirstName = 'shaik';
        con3.LastName = 'irfan';
        
        conlist.add(con1);
        conlist.add(con2);
        conlist.add(con3);
        
        insert conList;
         List<Id> conIds = new List<Id>();
        for(Contact cont : conList){
            conIds.add(cont.Id);
        }
		Test.setMock(HttpCalloutMock.class, new NameGenderFinderMock()); 
        //when
        Test.startTest();
        NameGenderFinder.findAndSaveGenderForMultipleContacts(conIds);
        Test.stopTest();
        
        //then
         List<Contact> contactList = [SELECT Id,Name,Gender__c FROM Contact WHERE Id IN :conIds AND Gender__c != Null];
        System.assertEquals(3, contactList.size());
    }
    //2
    @isTest
    static void findAndSaveGenderForMultipleContactsGenderNull(){
        //given
        
        List<Contact> conList = new List<Contact>();
        Contact con1 = new Contact();
        con1.FirstName = 'shaik';
        con1.LastName = 'irfan';
        
        Contact con2 = new Contact();
        con2.FirstName = 'shaik';
        con2.LastName = 'irfan';
        
        Contact con3 = new Contact();
        con3.FirstName = 'shaik';
        con3.LastName = 'irfan';
        
        conlist.add(con1);
        conlist.add(con2);
        conlist.add(con3);
        insert conList;
        
         List<Id> conIds = new List<Id>();
        for(Contact cont : conList){
            conIds.add(cont.Id);
        }
		Test.setMock(HttpCalloutMock.class, new NameGenderFinderMock()); 
        //when
        Test.startTest();
        NameGenderFinder.findAndSaveGenderForMultipleContacts(conIds);
        Test.stopTest();
        
        //then
         List<Contact> contactList = [SELECT Id,Name,Gender__c FROM Contact WHERE Id IN :conIds AND Gender__c = Null];
        System.assertEquals(0, contactList.size());
    }
    
    //3.
    @isTest
    static void MultipleContactWithSameName(){
	List<Contact> conList = new List<Contact>();
		Contact con1 =  new Contact();
        con1.FirstName = 'shaik';
        con1.LastName = 'Irfan';
        
        Contact con2 =  new Contact();
        con2.FirstName = 'shaik';
        con2.LastName = 'Irfan';
        
        Contact con3 =  new Contact();
        con3.FirstName = 'sk';
        con3.LastName = 'Imran';
        
        conList.add(con1);
        conList.add(con2);
        conList.add(con3);
        insert conList;
        
        NameGenderFinderMock mock = new NameGenderFinderMock();
        mock.isError = false;
        
        Test.setMock(HttpCalloutMock.class, mock);
        
        //when
        Test.startTest();
        NameGenderFinder.findAndSaveGenderForMultipleContacts(new List<Id>{con1.Id,con2.Id,con3.Id});
        Test.stopTest();
        
        //then
        //only 2 api calls should happen
        system.assertEquals(2, mock.numOfCalls, 'only 2 calls should be made');
}
}