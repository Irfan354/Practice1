@IsTest // annotation
private class OptyChildAmountTest {
    
    // When we insert an opty child, the opty child amount should not change
    @IsTest
    static void testShouldNotChangeWhenOptyChildIsInserted(){
        // Given
        Opportunity opp1 = new Opportunity();
        opp1.Name = 'something';
        opp1.StageName = 'Prospecting';
        opp1.CloseDate = System.today();
        insert opp1;
        
        // When
        Opportunity_Child__c child = new Opportunity_Child__c();
        child.Opportunity__c = opp1.Id;
        insert child;
        
        // Then
        Opportunity_Child__c childAgain = [SELECT Id, Child_Amount__c FROM Opportunity_Child__c WHERE Id = :child.Id];
        System.assertEquals(0, childAgain.Child_Amount__c, 'Child amount is not 0');
    }
    
    // When we change opty name, then opty child amount should not change
    @IsTest
    static void testShouldNotChangeWhenOptyNameChanges() {
        // Given
        Opportunity opp1 = new Opportunity();
        opp1.Name = 'something';
        opp1.StageName = 'Prospecting';
        opp1.CloseDate = System.today();
        insert opp1;
        
        Opportunity_Child__c child = new Opportunity_Child__c();
        child.Opportunity__c = opp1.Id;
        insert child;
        
        // When
        opp1.Name = 'changed';
        update opp1;
        
        // Then
        Opportunity_Child__c childAgain = [SELECT Id, Child_Amount__c FROM Opportunity_Child__c WHERE Id = :child.Id];
        System.assertEquals(0, childAgain.Child_Amount__c, 'child amount has not changed');
    }
    
    // When there is an opty child and we update the opty amount
    // then the child amount should be incremented by 200
    @IsTest
    static void testShouldIncrementChildAmountBy200For1Child() {
        // Given
        Opportunity opp1 = new Opportunity();
        opp1.Name = 'something';
        opp1.StageName = 'Prospecting';
        opp1.CloseDate = System.today();
        opp1.Amount = 0;
        insert opp1;
        
        Opportunity_Child__c child = new Opportunity_Child__c();
        child.Opportunity__c = opp1.Id;
        insert child;
        
        // When
        opp1.Amount = 200;
        update opp1;
        
        // Then
        Opportunity_Child__c childAgain = [SELECT Id, Child_Amount__c FROM Opportunity_Child__c WHERE Id = :child.Id];
        System.assertEquals(200, childAgain.Child_Amount__c, 'child amount has not changed');
    }
    
    // When there are multple opty children and we update the opty amount
    // then the children amount should all be incremented by 200 each
    @IsTest
    static void testShouldIncrementChildAmountBy200ForMultipleChildren() {
          // Given
        Opportunity opp1 = new Opportunity();
        opp1.Name = 'something';
        opp1.StageName = 'Prospecting';
        opp1.CloseDate = System.today();
        opp1.Amount = 0;
        insert opp1;
        
        List<Opportunity_Child__c> oppList = new List<Opportunity_Child__c>();
        Opportunity_Child__c child1 = new Opportunity_Child__c();
        child1.Opportunity__c = opp1.Id;
		child1.Name = 'child 1 ';
        oppList.add(child1);
        
        Opportunity_Child__c child2 = new Opportunity_Child__c();
        child2.Opportunity__c = opp1.Id;
		child2.Name = 'child 2';
        oppList.add(child2);
        
        Opportunity_Child__c child3 = new Opportunity_Child__c();
        child3.Opportunity__c = opp1.Id;
		child3.Name = 'child 3';
        child3.Child_Amount__c = 200;
        oppList.add(child3);
        
            insert oppList;

        
        // When
        opp1.Amount = 200; 
        update opp1;
        
        // Then
        List<Opportunity_Child__c> childAgain = [SELECT Id, Child_Amount__c FROM Opportunity_Child__c WHERE Id IN :oppList];
        System.assertEquals(200, childAgain.get(0).Child_Amount__c, 'child amount has not changed');
    	 System.assertEquals(200, childAgain.get(1).Child_Amount__c, 'child amount has not changed');
    	 System.assertEquals(400, childAgain.get(2).Child_Amount__c, 'child amount has not changed');
    
    }
    
    // When there are 3 opportunities and we update all these opty amounts
    // then all the children of these 3 optys should be incremented by 200 each
    @IsTest
    static void testShouldIncrementChildAmountForMultipleOpportunities() {
           // Given
          List<Opportunity> optyList = new List<Opportunity>();
        Opportunity opp1 = new Opportunity();
        opp1.Name = 'something';
        opp1.StageName = 'Prospecting';
        opp1.CloseDate = System.today();
        opp1.Amount = 0;
        optyList.add(opp1);
        
        
        Opportunity opp2 = new Opportunity();
        opp2.Name = 'something';
        opp2.StageName = 'Prospecting';
        opp2.CloseDate = System.today();
        opp2.Amount = 100;
        optyList.add(opp2);
        
        Opportunity opp3 = new Opportunity();
        opp3.Name = 'something';
        opp3.StageName = 'Prospecting';
        opp3.CloseDate = System.today();
        opp3.Amount = 200;
        optyList.add(opp3);
        
        insert optyList;
        
          List<Opportunity_Child__c> oppList = new List<Opportunity_Child__c>();
        Opportunity_Child__c child1 = new Opportunity_Child__c();
        child1.Opportunity__c = opp1.Id;
		child1.Name = 'child 1 ';
        oppList.add(child1);
        
        Opportunity_Child__c child1a = new Opportunity_Child__c();
        child1a.Opportunity__c = opp1.Id;
		child1a.Name = 'child 1 ';
        oppList.add(child1a);
        
        Opportunity_Child__c child2 = new Opportunity_Child__c();
        child2.Opportunity__c = opp2.Id;
		child2.Name = 'child 2';
        oppList.add(child2);
        
        Opportunity_Child__c child3 = new Opportunity_Child__c();
        child3.Opportunity__c = opp3.Id;
		child3.Name = 'child 3';
        oppList.add(child3);
        
            insert oppList;
        
         // When
        for(Opportunity opl : optyList){
            opl.Amount = 200; 
        }
      
        update optyList;
        
        // Then
        List<Opportunity_Child__c> childAgain = [SELECT Id, Child_Amount__c FROM Opportunity_Child__c WHERE Id IN :oppList];
        System.assertEquals(200, childAgain.get(0).Child_Amount__c, 'child amount has not changed');
    	 System.assertEquals(200, childAgain.get(1).Child_Amount__c, 'child amount has not changed');
    	 System.assertEquals(400, childAgain.get(2).Child_Amount__c, 'child amount has not changed');
    
    }
}