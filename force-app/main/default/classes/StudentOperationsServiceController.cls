public with sharing class StudentOperationsServiceController {
        @AuraEnabled
        public static Boolean saveStudent(String name, String fathersName) {
            Students__c stud = new Students__c() ;
            try {
                stud.Name = name;
                stud.Fathers_Name__c = fathersName;
                update stud;
                System.debug('@@@@@@ Student record created @@@@ '+stud);
            }catch(Exception e) {
                return false;
            }
            return true;
        }

    }