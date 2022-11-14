@isTest
public class PracticeTest {
    @isTest
    public static void getAddition(){
        Practice helper = new Practice();
        Integer result = helper.getAddition(2,3);
        system.assertEquals(5, result);
    }
    @isTest
    public static void getSubtraction(){
        Practice helper = new Practice();
        Integer result = helper.getSubtraction(9,5);
        system.assertEquals(4, result);
    }
    @isTest
    public static void getMultiplication(){
        Practice helper = new Practice();
        Integer result = helper.getMultiplication(5,5);
        system.assertEquals(25, result);
    }
    @isTest
    public static void getDivision(){
        Practice helper = new Practice();
        Integer result = helper.getDivision(25,5);
        system.assertEquals(5,result);
    }
    @isTest
    public static void checkOddOrEven(){
        Practice helper = new Practice();
        Integer result = helper.checkOddOrEven(2);
        system.assertEquals(0,result );
    }
    
}