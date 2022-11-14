public with sharing class CynoParent {
    public CynoName nameDetails {get; set;}
    public String gender{get; set;}
    public String parentType{get; set;}
    public Integer yearSalary{get; set;}
    public String occupation{get; set;}
    public boolean unEmployee {set;get;}
    public CynoParent(CynoName name, String gender, String parentType, Integer yearSalary, String occupation){
        this.nameDetails = name;
        this.gender = gender;
        this.parentType = parentType;
        this.yearSalary = yearSalary;
        this.occupation = occupation;
        if(occupation == NULL){
            this.unEmployee = true;
        }
    }
}