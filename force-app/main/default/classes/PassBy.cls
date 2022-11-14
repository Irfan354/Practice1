public with sharing class PassBy {
     public static void multiplyByPI(double radius){
        double area,pi=3.142;
        area=pi*radius*radius;
        //a = a * 3.14;
        system.debug('The values of MultiplyBy is:'+area);
    }
    
    public static void getCharOfFirstTwo(String myString){
        myString=myString+'Cynosure';
        system.debug('The String is:'+myString);
        if(myString.length()>=2){
          system.debug('The result is:'+myString.substring(0,2)); 
            system.debug('The Result of the particular Char is:'+myString.charAt(2));
        }
        else{
          system.debug('Please enter the string more than two characters');  
        }
        //system.debug('The result is:'+myString.substring(0,2);
    }
    public static void addStringToSet(Set<String> student){
        student.add('jordan');
        system.debug('The Full Set of school is:'+ student);
    }
}