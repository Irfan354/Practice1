@isTest
public class holdComplexDataTypes {
    public static Map<Integer, Student__c> createStudentRecords() {
        Map<Integer, Student__c> studentsMap = new Map<Integer, Student__c>();
        Student__c stud1 = new Student__c();
        stud1.Age__c =24.5;
        Stud1.Roll_Number__C = 1;
        stud1.Father_Name__c= 'Dady1';
        stud1.Name = 'Son1';
        stud1.Math__c = 70;
        stud1.Science__c = 75;
        stud1.Social__c = 80;
        stud1.English__c = 90;
        stud1.Hindi__c = 85;
        
        Student__c stud2 = new Student__c();
        stud2.Age__c =15;
        stud2.Roll_Number__C = 2;
        stud2.Father_Name__c= 'Dady2';
        stud2.Name = 'Son2';
        stud2.Math__c = 80;
        stud2.Science__c = 65;
        stud2.Social__c = 70;
        stud2.English__c = 80;
        stud2.Hindi__c = 75;
        
        Student__c stud3 = new Student__c();
        stud3.Age__c =40;
        stud3.Roll_Number__C = 3;
        stud3.Father_Name__c= 'Dady3';
        stud3.Name = 'Son3';
        stud3.Math__c = 80;
        stud3.Science__c = 65;
        stud3.Social__c = 70;
        stud3.English__c = 79;
        stud3.Hindi__c = 83;
        
        Student__c stud4 = new Student__c();
        stud4.Age__c =23.2;
        stud4.Roll_Number__C = 4;
        stud4.Father_Name__c = 'Dady4';
        stud4.Name = 'Son4';
        stud4.Math__c = 80;
        stud4.Science__c = 75;
        stud4.Social__c = 90;
        stud4.English__c = 70;
        stud4.Hindi__c = 75;
        
        studentsMap.put(1,stud1);
        studentsMap.put(2,stud2);
        studentsMap.put(3,stud3);
        studentsMap.put(4,stud4);
        
        return studentsMap;
        
        
    }
    //All Students whose age is less than 24 should be allotted Class X
    //All Students whose age is more than 24 should be allotted Class Y
    
    public static void AllotClass(Map<Integer, Student__c> sMap) {
        
        Map <Integer,String> stuMap = new Map<Integer,String>(); //using map method for key ,values age number,classes 
        
        for(Student__c stuAge : sMap.values() ){
            if(stuAge.Age__c < 24){
                stuMap.put(Integer.valueOf(stuAge.Age__c), 'class X'); //adding the key,value less than age 24
            }
            else if(stuAge.Age__c > 24){
                stuMap.put(Integer.valueOf(stuAge.Age__c), 'class Y');  //adding the key,value greater than age 24
            }
        }
        system.debug('key values' + stuMap); //executing the elemnts in map method
    }
    
    //Total marks calculation
    
    public static void marksCalc(Map<Integer, Student__c> sMap) {
        
        Map<Integer,Decimal> stuMarksCalc = new Map<Integer,Decimal>(); //using map method for getting key,values
        
        for(Student__c stuMarks : sMap.values() ){
            Decimal marksCalculated = stuMarks.Math__c+stuMarks.Science__c+stuMarks.Social__c+stuMarks.English__c+stuMarks.Hindi__c;
            stuMarksCalc.put(Integer.valueOf(stuMarks.Roll_Number__c),marksCalculated ); //adding the key,values 
        }
        system.debug('marks calculated : ' + stuMarksCalc); //executing the elements 
    }
    
    public static void printValues(Map<Integer, Student__c> sMap) {
        System.debug('Values ---> '+sMap.values());
    }
    
}