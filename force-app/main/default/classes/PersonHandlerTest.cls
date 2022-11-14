@IsTest
public class PersonHandlerTest {
@IsTest
    static void testAddContact(){	
    	PersonHandler handler = new PersonHandler();
        Person p1 = new Person('shaik','irfan','CMR','hyd');
        Person p2 = new Person('shaik','irfan','CMR','hyd');
        Person p3 = new Person('shaik','irfan','CMR','hyd');
        Person p4 = new Person('shaik','irfan','CMR','hyd');
        Person p5 = new Person('shaik','irfan','CMR','hyd');
        Person p6 = new Person('shaik','irfan','CMR','hyd');
        Person p7 = new Person('shaik','irfan','CMR','hyd');
        person p8 = new Person('shaik','irfan','CMR','hyd');
        
    handler.addPerson(p1);
    handler.addPerson(p2);
    handler.addPerson(p3);
    handler.addPerson(p4);
    handler.addPerson(p5);
    handler.addPerson(p6);
    handler.addPerson(p7);
    handler.addPerson(p8);
    system.debug('before serialize'+handler.PersonList);
    string jsonString=JSON.serialize(handler.PersonList);
    List<Person> res = handler.PersonList;
    system.debug('after serialize'+jsonString);
    system.assertEquals(8,res.size(),'msg');
    
   }
}