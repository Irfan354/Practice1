public class PersonHandler {
    public List<Person> PersonList{get;set;}
    public PersonHandler() {
        this.PersonList=new List<Person>();
    }
    public void addPerson(Person contact){
        this.PersonList.add(contact);
    }
       
}