public with sharing class StudentOperationsController {
   @AuraEnabled
    //add student
    public static void addStudent(StudentWrapper student){
        Students__c studs = new Students__c();
        studs.Name = student.Name;
        if(student.marksList != NULL){
            for (Marks marks : student.marksList) {
                if(marks.subject != NULL && marks.subject.equalsIgnoreCase('Telugu')){
                    studs.Telugu__c = marks.mark;
                }
                if(marks.subject != NULL && marks.subject.equalsIgnoreCase('Hindi')){
                    studs.Hindi__c = marks.mark;
                }
                if(marks.subject != NULL && marks.subject.equalsIgnoreCase('English')){
                    studs.English__c = marks.mark;
                }
                if(marks.subject != NULL && marks.subject.equalsIgnoreCase('Maths')){
                    studs.Maths__c = marks.mark;
                }
                if(marks.subject != NULL && marks.subject.equalsIgnoreCase('Science')){
                    studs.Science__c = marks.mark;
                }
                if(marks.subject != NULL && marks.subject.equalsIgnoreCase('Social')){
                    studs.Social__c = marks.mark;
                }
            }
        }
        insert studs;
    }

    @AuraEnabled
    public static Boolean saveStudent(String name, String fathersName) {
        Students__c stu = new Students__c();
        try {
            stu.Name = name;
            stu.Fathers_Name__c = fathersName;
            insert stu;
            System.debug('@@@@@@ Student record created @@@@ '+stu);
        }catch(Exception e) {
            return false;
        }
        return true;
    }

    public Static void updateMarksOnBulk(Map<String, List<Marks>> marksMap) {
        //...Ignore for today
    }
    @AuraEnabled
    //update student
    public static void updateMarks(String name, List<Marks> marks) {
        //..today
        List<Students__c> studUpd = new List<Students__c>();
        set<id> ids = new Set<id>();
        if(!String.isBlank(Name))
        {
            for(Students__c stu : [select id,Name From Students__c where name = :Name]){
                ids.add(stu.id);
            }
        }

    }
    public static void deleteMarksForStudent(String name) {
        //.. today
    }
    public static void deleteStudents(List<String> names) {
        //..
    }
    public static void updateGrade() {
        //..Ignore for today
    }
    public static void udpateTotalForStudents(List<String> name) {
        //... today
       /* List<Students__c> studList = new List<Students__c>();
        for(String nm : name){
            Students__c stud = new Students__c();
            stud.Name=nm;
            studList.add(stud);
        }
        update studList;*/


    }
    public static void updateTotalForAllStudents() {
        //... today
    }
    private static Students__c getStudentFromWrapper(StudentWrapper wrapper ) {
        Students__c stud = new Students__c();
        stud.Name = wrapper.Name;
        System.debug('@@@@@ 34 @@@@@@@ '+wrapper);
        System.debug('@@@@@ 35 @@@@@@@ '+wrapper.marksList);
        if(wrapper.marksList != NULL){
            for (Marks marks : wrapper.marksList) {
                if(marks.subject != NULL && marks.subject.equalsIgnoreCase('Telugu')){
                    stud.Telugu__c = marks.mark;
                }
                if(marks.subject != NULL && marks.subject.equalsIgnoreCase('Hindi')){
                    stud.Hindi__c = marks.mark;
                }
                if(marks.subject != NULL && marks.subject.equalsIgnoreCase('English')){
                    stud.English__c = marks.mark;
                }
                if(marks.subject != NULL && marks.subject.equalsIgnoreCase('Maths')){
                    stud.Maths__c = marks.mark;
                }
                if(marks.subject != NULL && marks.subject.equalsIgnoreCase('Science')){
                    stud.Science__c = marks.mark;
                }
                if(marks.subject != NULL && marks.subject.equalsIgnoreCase('Social')){
                    stud.Social__c = marks.mark;
                }
            }
        }
        return stud;
    }
    @AuraEnabled
    public static void addStudents(List<StudentWrapper> StudentWrappers){
        List<Students__c> studentsList = new List<Students__c>();
        for(StudentWrapper wrapper : StudentWrappers) {
            studentsList.add(getStudentFromWrapper(wrapper));
        }
        insert studentsList;
    }

    public Class Marks{
        public String subject{get;set;}
        public Integer mark {get;set;}
        public Marks(string sub, Integer mrk) {
            this.subject = sub;
            this.mark = mrk;
        }
    }

    public Class StudentWrapper{
        @AuraEnabled
        public String name{get;set;}

        @AuraEnabled
        public List<Marks> marksList{get; set;}

        public StudentWrapper(String nameParam, List<Marks> marksListParam) {
            this.name = nameParam;
            this.marksList = marksListParam;
            if(marksList == NULL) {
                marksList = new List<Marks>();
            }
            else {
                this.marksList = marksListParam;
            }
        }
    }
}