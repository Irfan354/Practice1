public with sharing class StudentsOperations {
    
     @AuraEnabled
    public static List<Students__c>  studentlist(String name, String fathersName,Decimal telugu,Decimal hindi,Decimal english,Decimal maths,Decimal science,Decimal social) {
        Students__c stud = new Students__c();
        List<Students__c> studList = new List<Students__c> ();
        
        stud.Name = name;
        stud.Fathers_Name__c = fathersName;
        stud.Telugu__c = telugu;
        stud.Hindi__c = hindi;
        stud.English__c = english;
        stud.Maths__c = maths;
        stud.Science__c = science;
        stud.Social__c = social;
        
        stud.Sum__c = stud.Telugu__c + stud.Hindi__c + stud.English__c  + stud.Maths__c + stud.Science__c + stud.Social__c ;

        Decimal avg = (stud.Telugu__c + stud.Hindi__c + stud.English__c  + stud.Maths__c + stud.Science__c + stud.Social__c)/5;

         stud.Average__c = avg;
         
        
        if(avg >= 80){
            stud.Class__c = 'First Class';
        }else if (avg >= 70 && avg < 80){
            stud.Class__c = 'Second Class';
        }else if ( avg < 70){
            stud.Class__c = 'Third Class';
        }
           
        if(stud.Telugu__c>50 && stud.Hindi__c>50 && stud.English__c> 50 && stud.Maths__c>50 && stud.Science__c> 50 && stud.Social__c > 50){
            stud.Result__c= 'Pass'; 
        }
        else{
            stud.Result__c = 'Fail';
        }
        studList.add(stud);

        try {
            insert studList;
            System.debug('@@@@@@ Student record created @@@@ '+studList);
        }catch(Exception e) {
            return  null;
        }
        return studList;
    }
}