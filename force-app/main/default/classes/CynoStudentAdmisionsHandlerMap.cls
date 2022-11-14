public with sharing class CynoStudentAdmisionsHandlerMap {
public Map<Integer, CynoStudent> studentsMap{get;set;} 

public CynoStudentAdmisionsHandlerMap(){
    this.studentsMap = new Map<Integer,CynoStudent>();
    }
 
 public void addStudentInMap(CynoStudent student){
    Integer key=1; 
    if(studentsMap.containsKey(key)== NULL){
    this.studentsMap.put(1,student);
    }
    }
}