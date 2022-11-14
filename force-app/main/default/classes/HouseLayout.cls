public class HouseLayout {
    public static void HouseMethod(List<House__c>triggernew){
         Id Flats = Schema.SObjectType.House__c.getRecordTypeInfosByName().get('Flats').getRecordTypeId();//schema represents structure of db
    	 Id Terrace= Schema.SObjectType.House__c.getRecordTypeInfosByName().get('Terrace').getRecordTypeId();//fetch the record type
         Id Individual = Schema.SObjectType.House__c.getRecordTypeInfosByName().get('Individual').getRecordTypeId();
        
        for(House__c hs : triggernew){//returns new records
            if(hs.RecordTypeId == Flats ){//recordtype
                hs.House_Type__c = 'Flat';//picklist type
            }
        	 if(hs.RecordTypeId == Terrace ){
                hs.House_Type__c = 'Terrace';
            }
             if(hs.RecordTypeId == Individual ){
                hs.House_Type__c = 'Individual';
            }
        }
        
    }
}