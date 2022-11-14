@IsTest
public class ListTestByGokul {
 @IsTest
     static void testCynoStudentAdmisionHandlerList() {
       CynoStudentAdmisionHandlerList  handler = new CynoStudentAdmisionHandlerList();
        System.assertEquals(0, handler.studentsList.size());
    
    }

    @IsTest
    static void testaddStudent() {

    CynoStudent student1 = new CynoStudent();
    CynoStudent student2 = new CynoStudent();
    CynoStudent student3 = new CynoStudent();

    CynoName stud1Name = new CynoName ('Gokul','M','');
    CynoAddress stud1PerAdd = new CynoAddress ('HousingUnit','Nehrunagar','Coimbatore','641014','tamilnadu','India');
    CynoAddress stud1CurAdd = new CynoAddress ('HousingUnit','Nehrunagar','Coimbatore','641014','tamilnadu','India');
    CynoParent stud1Father = new CynoParent(new CynoName('Anbu', 'Mari',''),'male','father',500000,'poltician');
    CynoParent stud1Mother = new CynoParent(new CynoName('subathra', 'mari',''),'Female','Mother',0,NULL);


    student1.nameDetails = stud1Name;
    student1.permanentAddress = stud1PerAdd;
    student1.currentAddress = stud1CurAdd;
    student1.father = stud1Father;
    student1.mother = stud1Mother;

    CynoName stud2Name = new CynoName ('Madhu','Mitha','');
    CynoAddress stud2PerAdd = new CynoAddress ('Vinayagar Kovil','palladam','Coimbatore','641064','tamilnadu','India');
    CynoAddress stud2CurAdd = new CynoAddress ('Vinayagar Kovil','palladam','Coimbatore','641064','tamilnadu','India');
    CynoParent stud2Father = new CynoParent(new CynoName('Arun', 'Kumar',''),'male','father',30000,'bank manager');
    CynoParent stud2Mother = new CynoParent(new CynoName('lakshmi', 'kumar',''),'Female','Mother',10000,'Nurse');


    student2.nameDetails = stud2Name;
    student2.permanentAddress = stud2PerAdd;
    student2.currentAddress = stud2CurAdd;
    student2.father = stud2Father;
    student2.mother = stud2Mother;

    CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();
        handler.addStudent(Student1);
        handler.addStudent(Student2);

        System.debug('@@@@@ 07 @@@@@@ '+JSON.serialize(handler.studentsList));
        System.assertEquals(2, handler.studentsList.size());


}

@IsTest
static void testGetLstOfStudsWhoseMothersSalMoreThanFathersSal() {
    CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();

    CynoStudent student1 = new CynoStudent();
    CynoStudent student2 = new CynoStudent();
    CynoStudent student3 = new CynoStudent();

    CynoParent stud1Father = new CynoParent(new CynoName('rathan', 'Tata',''),'Male', 'Father',260000,'Buissnessman');

    CynoParent stud1Mother = new CynoParent(new CynoName('Anitha', 'kumari',''),'Female','Mother',8000,'Lawyer');

    CynoParent stud2Mother = new CynoParent(new CynoName('anu', 'Ishu',''),'Female','Mother',16000,'Lawyer');

    CynoParent stud2Father = new CynoParent(new CynoName('Arun', 'kumar',''),'Male','Father',8000,'');

    CynoParent stud3Father = new CynoParent(new CynoName('guna', '','sekar'),'Male','Father',60000,'Doctor');

    CynoParent stud3Mother = new CynoParent(new CynoName('ramya', '',''),'Female','Mother',8000,'Lawyer');
    
    student1.mother = stud1Mother;
    student1.father = stud1Father;

    student2.mother = stud2Mother;
    student2.father = stud2Father;

    student3.mother = stud3Mother;
    student3.father = stud3Father;

    handler.addStudent(student1);
    handler.addStudent(student2);
    handler.addStudent(student3);

    List<CynoStudent> result = handler.getStudentsMothersSalaryIsMoreThanFathersSalary();
    System.assertEquals(1, result.size());

}
@IsTest
static void testGetLstOfStudsWhoseFathersSalMoreThanMothersSal() {
    CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();

    CynoStudent student1 = new CynoStudent();
    CynoStudent student2 = new CynoStudent();
    CynoStudent student3 = new CynoStudent();

    CynoParent stud1Father = new CynoParent(new CynoName('rathan', 'Tata',''),'Male', 'Father',260000,'Buissnessman');

    CynoParent stud1Mother = new CynoParent(new CynoName('Anitha', 'kumari',''),'Female','Mother',8000,'Lawyer');

    CynoParent stud2Mother = new CynoParent(new CynoName('anu', 'Ishu',''),'Female','Mother',16000,'Lawyer');

    CynoParent stud2Father = new CynoParent(new CynoName('Arun', 'kumar',''),'Male','Father',8000,'');

    CynoParent stud3Father = new CynoParent(new CynoName('guna', '','sekar'),'Male','Father',60000,'Doctor');

    CynoParent stud3Mother = new CynoParent(new CynoName('ramya', '',''),'Female','Mother',8000,'Lawyer');
    
    student1.mother = stud1Mother;
    student1.father = stud1Father;

    student2.mother = stud2Mother;
    student2.father = stud2Father;

    student3.mother = stud3Mother;
    student3.father = stud3Father;

    handler.addStudent(student1);
    handler.addStudent(student2);
    handler.addStudent(student3);

    List<CynoStudent> result = handler.getListOfStudsWhoseFatherssSalMoreThanMothersSal();
    System.assertEquals(2, result.size());

}
@IsTest
static void testGetLstOfStudsWhoseMotherIsUnEmployedl() {
    CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();

    CynoStudent student1 = new CynoStudent();
    CynoStudent student2 = new CynoStudent();
    CynoStudent student3 = new CynoStudent();

    CynoParent stud1Mother = new CynoParent(new CynoName('Anitha', 'kumari',''),'Female','Mother',4550,'lawyer');

    CynoParent stud2Mother = new CynoParent(new CynoName('anu', 'Ishu',''),'Female','Mother',0,NULL);

    CynoParent stud3Mother = new CynoParent(new CynoName('ramya', '',''),'Female','Mother',8000,'Doctar');
    
    student1.mother = stud1Mother;
    
    student2.mother = stud2Mother;
    
    student3.mother = stud3Mother;
    

    handler.addStudent(student1);
    handler.addStudent(student2);
    handler.addStudent(student3);

    List<CynoStudent> result1 = handler.getListOfStudentsWhoseMotherIsUnemployed();
    System.assertEquals(1, result1.size());

}
@IsTest
static void testGetLstOfStudsWhoseFatherIsUnEmployed() {
    CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();

    CynoStudent student1 = new CynoStudent();
    CynoStudent student2 = new CynoStudent();
    CynoStudent student3 = new CynoStudent();

    CynoParent stud1Father = new CynoParent(new CynoName('rathan', 'Tata',''),'Male', 'Father',260000,'Buissnessman');

    CynoParent stud2Father = new CynoParent(new CynoName('Arun', 'kumar',''),'Male','Father',0,NULL);

    CynoParent stud3Father = new CynoParent(new CynoName('guna', '','sekar'),'Male','Father',60000,'Doctor');
    
    student1.father = stud1Father;
    student2.father = stud2Father;
    student3.father=stud3Father;
    
    handler.addStudent(student1);
    handler.addStudent(student2);
    handler.addStudent(student3);

    List<CynoStudent> result1 = handler.getListOfStudentsWhoseFatherIsUnemployed();
    
    System.assertEquals(1, result1.size());

}
@IsTest
static void testGetLstOfStudsWhosePermanentAddressIsDifferFromCurrentAddress() {
    CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();

    CynoStudent student1 = new CynoStudent();
    CynoStudent student2 = new CynoStudent();
    CynoStudent student3 = new CynoStudent();

    CynoAddress student1PerAddress=new CynoAddress('chilzIT','Saravanapatti','Coimbatore','641064','tamilnadu','India');
    CynoAddress student1CurAddress=new CynoAddress('chilzIT','Saravanapatti','Coimbatore','641064','tamilnadu','India');

    CynoAddress student2PerAddress=new CynoAddress('HousingUnit','Nehrunagar','Coimbatore','641014','tamilnadu','India');
    CynoAddress student2CurAddress=new CynoAddress('HousingUnit','Nehrunagar','Coimbatore','641014','tamilnadu','India');

    CynoAddress student3PerAddress=new CynoAddress('kathir','college','coimbatore','641064','Tamilnadu','India');
    CynoAddress student3CurAddress=new CynoAddress('GHSSS','Kalapatti','Coimbatore','641048','tamilnadu','India');

     student1.permanentAddress = student1PerAddress;
     student1.currentAddress = student1CurAddress;

     student2.permanentAddress = student2PerAddress;
     student2.currentAddress = student2CurAddress;

     student3.permanentAddress = student3PerAddress;
     student3.currentAddress = student3CurAddress;

    handler.addStudent(student1);
    handler.addStudent(student2);
    handler.addStudent(student3);

    List<CynoStudent> result1 = handler.getAddressOfBothCurrentAndPermenantAddressDifferent();

    System.assertEquals(1, result1.size());

}
@IsTest
static void testGetLstOfStudsWhoHaveSameAddressAsPermanentandCurrentAddress() {
    CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();

    CynoStudent student1 = new CynoStudent();
    CynoStudent student2 = new CynoStudent();
    CynoStudent student3 = new CynoStudent();

    CynoAddress student1PerAddress=new CynoAddress('chilzIT','Saravanapatti','Coimbatore','641064','tamilnadu','India');
    CynoAddress student1CurAddress=new CynoAddress('chilzIT','Saravanapatti','Coimbatore','641064','tamilnadu','India');

    CynoAddress student2PerAddress=new CynoAddress('HousingUnit','Nehrunagar','Coimbatore','641014','tamilnadu','India');
    CynoAddress student2CurAddress=new CynoAddress('HousingUnit','Nehrunagar','Coimbatore','641014','tamilnadu','India');

    CynoAddress student3PerAddress=new CynoAddress('kathir','college','coimbatore','641064','Tamilnadu','India');
    CynoAddress student3CurAddress=new CynoAddress('GHSSS','Kalapatti','Coimbatore','641048','tamilnadu','India');

     student1.permanentAddress = student1PerAddress;
     student1.currentAddress = student1CurAddress;

     student2.permanentAddress = student2PerAddress;
     student2.currentAddress = student2CurAddress;

     student3.permanentAddress = student3PerAddress;
     student3.currentAddress = student3CurAddress;

    handler.addStudent(student1);
    handler.addStudent(student2);
    handler.addStudent(student3);

    List<CynoStudent> result1 = handler.getAddressOfBothCurrentAndPermenantAddressSame();

    System.assertEquals(2, result1.size());

}

@IsTest
static void testGetLstOfStudentsWhoseBothParentsAReUnemployeed() {
    CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();

    CynoStudent student1 = new CynoStudent();
    CynoStudent student2 = new CynoStudent();
    CynoStudent student3 = new CynoStudent();

    CynoParent stud1Father = new CynoParent(new CynoName('rathan', 'Tata',''),'Male', 'Father',260000,'Buissnessman');

    CynoParent stud1Mother = new CynoParent(new CynoName('Anitha', 'kumari',''),'Female','Mother',8000,'Lawyer');

    CynoParent stud2Mother = new CynoParent(new CynoName('anu', 'Ishu',''),'Female','Mother',0,NULL);

    CynoParent stud2Father = new CynoParent(new CynoName('Arun', 'kumar',''),'Male','Father',0,NULL);

    CynoParent stud3Father = new CynoParent(new CynoName('guna', '','sekar'),'Male','Father',60000,'Doctor');

    CynoParent stud3Mother = new CynoParent(new CynoName('ramya', '',''),'Female','Mother',8000,'Lawyer');
    
    student1.mother = stud1Mother;
    student2.mother = stud2Mother;

    student1.father = stud1Father;
    student2.father = stud2Father;

    student3.mother = stud3Mother;
    student3.father = stud3Father;

    handler.addStudent(student1);
    handler.addStudent(student2);
    handler.addStudent(student3);

    List<CynoStudent> result = handler.getListOfStudentsWhoseParentsAreUnemployed();

    
    System.assertEquals(1, result.size());

}
@IsTest
static void testGetLstOfStudentsWhoseHaveemployeedParents() {
    CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();

    CynoStudent student1 = new CynoStudent();
    CynoStudent student2 = new CynoStudent();
    CynoStudent student3 = new CynoStudent();

    CynoParent stud1Father = new CynoParent(new CynoName('rathan', 'Tata',''),'Male', 'Father',260000,'Buissnessman');

    CynoParent stud1Mother = new CynoParent(new CynoName('Anitha', 'kumari',''),'Female','Mother',8000,'Lawyer');

    CynoParent stud2Mother = new CynoParent(new CynoName('anu', 'Ishu',''),'Female','Mother',0,NULL);

    CynoParent stud2Father = new CynoParent(new CynoName('Arun', 'kumar',''),'Male','Father',0,NULL);

    CynoParent stud3Father = new CynoParent(new CynoName('guna', '','sekar'),'Male','Father',60000,'Doctor');

    CynoParent stud3Mother = new CynoParent(new CynoName('ramya', '',''),'Female','Mother',8000,'Lawyer');
    
    student1.mother = stud1Mother;
    student2.mother = stud2Mother;

    student1.father = stud1Father;
    student2.father = stud2Father;

    student3.mother = stud3Mother;
    student3.father = stud3Father;

    handler.addStudent(student1);
    handler.addStudent(student2);
    handler.addStudent(student3);

    List<CynoStudent> result = handler.getListOfStudentsWhoseParentsAreEmployed();

    System.assertEquals(2, result.size());

}

@IsTest
static void testGetLstOfStudentsAnyParentsAReUnemployeed() {
    CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();

    CynoStudent student1 = new CynoStudent();
    CynoStudent student2 = new CynoStudent();
    CynoStudent student3 = new CynoStudent();

    CynoParent stud1Father = new CynoParent(new CynoName('rathan', 'Tata',''),'Male', 'Father',260000,'Buissnessman');

    CynoParent stud1Mother = new CynoParent(new CynoName('Anitha', 'kumari',''),'Female','Mother',8000,'Lawyer');

    CynoParent stud2Mother = new CynoParent(new CynoName('anu', 'Ishu',''),'Female','Mother',0,NULL);

    CynoParent stud2Father = new CynoParent(new CynoName('Arun', 'kumar',''),'Male','Father',100000,'IPS');

    CynoParent stud3Father = new CynoParent(new CynoName('guna', '','sekar'),'Male','Father',60000,'Doctor');

    CynoParent stud3Mother = new CynoParent(new CynoName('ramya', '',''),'Female','Mother',8000,'Lawyer');
    
    student1.mother = stud1Mother;
    student2.mother = stud2Mother;

    student1.father = stud1Father;
    student2.father = stud2Father;

    student3.mother = stud3Mother;
    student3.father = stud3Father;

    handler.addStudent(student1);
    handler.addStudent(student2);
    handler.addStudent(student3);

    List<CynoStudent> result = handler.getListOfStudentsIfAnyOfParentsAreUnemployed();

    System.assertEquals(1, result.size());

}



}