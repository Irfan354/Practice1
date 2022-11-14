public with sharing class StudentNewActionOverwriteController {
    public Student__c newStudentObject {get;set;}
    public Parent__c motherRecord {get;set;}
    public Parent__c fatherRecord {get;set;}
    public Decimal motherAdhaarNumber {get;set;}
    public Decimal fatherAdhaarNumber {get;set;}
    public String motherOccupation {get;set;}
    public String fatherOccupation {get;set;}
    public Boolean bothParentsAdharNumbersWrong {get;set;}
    public Boolean motherInformationMissing {get;set;}
    public Boolean fatherInformationMissing {get;set;}
    public Boolean discountNotValid {get;set;}
    public Boolean mandatoryField{get;set;}
    public Boolean wrongFieldType{get;set;}
    public Boolean wrongAadharSize{get;set;}
    public String name{get;set;}
    public Decimal aadharcheck{get;set;}
    public String errorFieldTypeValue{get;set;}
    public Integer aadharSize{get;set;}
 
    
    public StudentNewActionOverwriteController(ApexPages.StandardController controller) {
        initVariables();
        newStudentObject.Name = '';
        newStudentObject.Email__c = '';
        
        
       }

    private void initVariables() {
        bothParentsAdharNumbersWrong = false;
        motherInformationMissing = false;
		fatherInformationMissing = false;
        mandatoryField=false;
        wrongFieldType = false;
        wrongAadharSize = false;
        discountNotValid = false;
        newStudentObject = new Student__c();
      
    }
    
    private void resetValues(){
        bothParentsAdharNumbersWrong = false;
        motherInformationMissing = false;
		fatherInformationMissing = false;
        mandatoryField=false;
        discountNotValid = false;
        wrongFieldType = false;
        motherRecord = Null;
        fatherRecord = Null;
        wrongAadharSize = false;
        
    }
    private void resetRValues(){
        
       newStudentObject.Name = Null;
       newStudentObject.Email__c=' ';
        newStudentObject.Branch__c = Null;
        newStudentObject.Aadhar_Number__c = Null;
        newStudentObject.Father_Aadhar_Number__c = Null;
        newStudentObject.Mother_Aadhar_Number__c = Null;
        newStudentObject.Discount_Requested__c = Null;
        
        System.debug(newStudentObject.Email__c);
    }
    
    
    public PageReference save() {
        
       resetValues();
       try {
            Boolean isDataValid = isDataValidForDiscount(); //false
            System.debug('Parent Adhaar Error value'+bothParentsAdharNumbersWrong);
              if(isDataValid) {
               insert newStudentObject;
               return new PageReference('https://pubg200071-dev-ed.lightning.force.com/lightning/o/Student__c/list?filterName=Recent'); //..this should return to the list page ... @Jasir to action 
              }
               
                if(bothParentsAdharNumbersWrong) {
                    ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error, 'Aadhar info missing or not matching with records' +newStudentObject.Name));  
           
                }
                if(motherInformationMissing) {
                    ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error, 'mother information Missing or MotherAadhar Information not matching with parent records '+newStudentObject.Name));  
                }
                if(fatherInformationMissing) {
                    ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error, 'father information missing or FatherAadhar Information not matching with parent records '+newStudentObject.Name));  
                }
                if(mandatoryField){
                    ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error,'Mandatory fields value missing '));
                }
                if(wrongFieldType){
                    ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error,'Sorry the entered field type is wrong enter characters ' ));
                }
                if(wrongAadharSize){
           		 	ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error,'Sorry the Aadhar number must not be less than 12 digits ' ));   
           		}
              
                if(discountNotValid){
                      ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error, 'Sorry '+newStudentObject.Name + ', we cannot provide you '+ newStudentObject.Discount_Requested__c + '% discount'));
                      
                }
           
              if(isDataValid) {
               insert newStudentObject;
               return new PageReference('https://pubg200071-dev-ed.lightning.force.com/lightning/o/Student__c/list?filterName=Recent'); //..this should return to the list page ... @Jasir to action 
               }
                
       }catch(Exception e) {
           System.debug('The Exception is at Stack Trace'+e.getStackTraceString());
           System.debug('The Exception is at Line Number'+e.getLineNumber());
           ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error, e.getMessage(), 'Error Saving the Record @Jasir...please check'));  
        }
         
        return null;
  }
    public PageReference cancel(){
        
       return new PageReference('https://pubg200071-dev-ed.lightning.force.com/lightning/o/Student__c/list?filterName=Recent'); //..this should return to the list page ... @Jasir to action 

    } 
 
    public PageReference reset() {
        resetValues();
        resetRValues();
        PageReference pg = new PageReference(System.currentPageReference().getURL());
        pg.setRedirect(false);
        return pg;
    }
  
  
    private Boolean isDataValidForDiscount() {
        motherAdhaarNumber = newStudentObject.Mother_Aadhar_Number__c;
        fatherAdhaarNumber = newStudentObject.Father_Aadhar_Number__c;
        name = newStudentObject.Name; 
        aadharcheck = newStudentObject.Aadhar_Number__c;
       
        
        System.debug('motherAdhaarNumber --> '+motherAdhaarNumber);
        System.debug('fatherAdhaarNumber --> '+fatherAdhaarNumber);
       

        List<Parent__c> parentRecords = [select Id , 
                                                AAdhar_Number__c, 
                                                name, 
                                                Age__c, 
                                                ParentShip__c, 
                                                Salary__c,
                                                Job_sector__c
                                        from Parent__c 
                                        where AAdhar_Number__c 
                                        IN (:motherAdhaarNumber, :fatherAdhaarNumber)];
        
        System.debug('Parent Records  --> '+parentRecords);
        if(newStudentObject.Branch__c==Null){
              mandatoryField = true;
              return false;
           }
        
         if (newStudentObject.Email__c == ''|| newStudentObject.Email__c==null )
            {
               mandatoryField = true;
                return false;
           }
        if (newStudentObject.Name == '' || newStudentObject.Name==null)
            {
                mandatoryField = true;
              return false;
            }
             if (newStudentObject.Aadhar_Number__c==null)
            {
                mandatoryField =true;
               return false;
            }
             if (newStudentObject.Discount_Requested__c==null)
            {
                mandatoryField = true;
              return false;
            }
        
        if(parentRecords.size() == 0) {
            bothParentsAdharNumbersWrong = true;
            return false;
        }
        for(Parent__c parent : parentRecords) {
            if(parent.ParentShip__c.equalsIgnoreCase('Father')) {
                this.fatherRecord = parent;
            }
            if(parent.ParentShip__c.equalsIgnoreCase('Mother')) {
                this.motherRecord = parent;
            }
        }
        System.debug('this.fatherRecord --> '+this.fatherRecord);
        System.debug('this.motherRecord --> '+this.motherRecord);
        
        if(fatherRecord==Null){
            fatherInformationMissing = true;
            return false;
        }
       
        if(motherRecord==Null){
            motherInformationMissing = true;
            return false;
        }
        System.debug('testing name.containsOnly(^[a-z A-Z]$)'+name.containsOnly('^[a-z A-Z]$'));
        System.debug('testing negative above:'+!(name.containsOnly('^[a-z A-Z]*$')));
        System.debug('name.contains([0-9]+)'+name.contains('[0-9]+'));
        System.debug('name.containsAny([0-9]+)'+name.containsAny('[0-9]+'));
        System.debug('name is'+name.isAlpha());
        
        if (!(name.isAlpha())){
            wrongFieldType = true; 
            //errorFieldTypeValue = name;
            return false;
        }
        string p = string.ValueOf(aadharcheck);
        if(p.length() < 12){
           wrongAadharSize = true;
            return false;
          } 
       /** if (name.isNumeric()){
            wrongFieldType = true; 
            errorFieldTypeValue = name;
            return false;
        } */
        //aadharcheck = newStudentObject.Aadhar_Number__c;
        
        //if(!Decimal.valueOf(aadharcheck)){
          //  wrongFieldType = true; 
           //errorFieldTypeValue = aadharcheck;
            //System.debug('this.name --> '+this.wron);
            //return false;
        //}
        
        this.fatherOccupation = fatherRecord.Job_sector__c;
        this.motherOccupation = motherRecord.Job_sector__c;
        //Condition 1 - If Father Job is Govt, Mother Job is Govt what is maximum Discount = 5%
        System.debug('this.fatherOccupation --> '+this.fatherOccupation);
        System.debug('this.motherOccupation --> '+this.motherOccupation);
        System.debug('this.newStudentObject --> '+this.newStudentObject);
        System.debug('this.newStudentObject.Discount_Requested_c --> '+this.newStudentObject.Discount_Requested__c);
        
        if(this.fatherOccupation.equalsIgnoreCase('Government') && 
          this.motherOccupation.equalsIgnoreCase('Government') &&
          this.newStudentObject.Discount_Requested__c <= 5)  {
              return true;
          }
        if(this.fatherOccupation.equalsIgnoreCase('Private') &&
          this.motherOccupation.equalsIgnoreCase('Private') &&
          this.newStudentObject.Discount_Requested__c <= 30)  {
              return true;
          }
         if(this.fatherOccupation.equalsIgnoreCase('UnEmployed') &&
          this.motherOccupation.equalsIgnoreCase('UnEmployed') &&
          this.newStudentObject.Discount_Requested__c <= 80)  {
             return true;
          }
         if ((this.fatherOccupation.equalsIgnoreCase('Government')&&
          (this.motherOccupation.equalsIgnoreCase('UnEmployed') || 
           this.motherOccupation.equalsIgnoreCase('Private'))&&
           this.newStudentObject.Discount_Requested__c <= 10))  {
              return true;
          }
        if ((this.motherOccupation.equalsIgnoreCase('Government')&&
          (this.motherOccupation.equalsIgnoreCase('UnEmployed') || 
           this.motherOccupation.equalsIgnoreCase('Private'))&&
           this.newStudentObject.Discount_Requested__c <= 10))  {
              return true;
          }
          if ((this.fatherOccupation.equalsIgnoreCase('Private') ||
                   this.motherOccupation.equalsIgnoreCase('UnEmployed')) &&
              this.newStudentObject.Discount_Requested__c <= 0) {
              return true;
          }
         discountNotValid = true;
        return false;
    }
}