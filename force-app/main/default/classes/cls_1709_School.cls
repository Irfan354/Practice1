public class cls_1709_School {

    public String name;
    public static Integer numOfSchool = 0; //define count, assigned static
    
    public cls_1709_School(String name){	//constructor with one para 
        system.debug('iam in constructor');
        this.name = name;
        this.printSchoolName();
        this.incrementInNum();
        
    }
    
    public void printSchoolName(){
        system.debug('iam in method' + this.name);
    }
    
    private void incrementInNum(){
        numOfSchool = numOfSchool+1;
    }
    
}