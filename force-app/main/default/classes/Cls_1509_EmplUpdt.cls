public class Cls_1509_EmplUpdt {
    public static void getEmployee(Set<Id> usrId){
        
        List<User> newUser = [SELECT Id, FirstName, LastName, Phone, Email From User where Id In :usrId];
        
        List<Employee__c> newEmpl = new List<Employee__c>();
        for(User Eu : newUser){
            
        Employee__c emp = new Employee__c();
        emp.Employee_FirstName__c = Eu.FirstName;
        emp.Employee_LastName__c = Eu.LastName;
        emp.Contact__c = Eu.Phone;
        emp.Employee_Email__c = Eu.Email;
        emp.Name = Eu.FirstName + ' ' + Eu.LastName;
            newEmpl.add(emp);
        }
        if(newEmpl.size() > 0){
            insert newEmpl;
        }
    }
}