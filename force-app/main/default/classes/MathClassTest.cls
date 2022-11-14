@isTest
public class MathClassTest {
    
    public Integer getAddition (Integer a, Integer b){
        return a+b;
    }
    
    public Integer getMultiplication (Integer a, Integer b){
        return a*b;
    } 
    
    public Integer getSubstraction (Integer a, Integer b){
        if(a>b)
            return a-b ;
        else
            return b-a;
    }
}