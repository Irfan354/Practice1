public class Person {
   public String firstName{get;set;} 
 	public String lastName{get;set;}
   	public String college{get;set;}
    public String city{get;set;}
    public Person(String firstName, String lastName, String college, String city){
        this.firstName = firstName;
        this.lastName = lastName;
        this.college = college;
        this.city = city;
    }
}