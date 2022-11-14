@IsTest
public class ListOperationsUtilityTest {
    //union
    @IsTest
    static void testUnion(){
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
        firstList.add(10);
        firstList.add(18);
        firstList.add(45);
        firstList.add(60);
        firstList.add(24);
        
        secondList.add(12);
        secondList.add(24);
        secondList.add(35);
        secondList.add(48);
        secondList.add(65);
        List<Integer> result = ListOperationsUtility.getUnion(firstList, secondList);
        System.assertEquals(true, result.contains(14),'msg');
        System.assertEquals(true, result.contains(20),'msg');
        system.debug('List union :' +result);
    }
        //intersection
    @IsTest
    static void testIntersection(){
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
        firstList.add(10);
        firstList.add(18);
        firstList.add(45);
        firstList.add(60);
        firstList.add(24);
        
        secondList.add(12);
        secondList.add(24);
        secondList.add(35);
        secondList.add(48);
        secondList.add(65);
        List<Integer> result = ListOperationsUtility.getIntersection(firstList, secondList);
        System.assertEquals(true, result.contains(1),'msg');
        System.assertEquals(true, result.contains(105),'msg');
        system.debug('List Intersection :' +result);
        
    }
        //ValuesInFirstButNotInSecond
    @IsTest
    static void testValuesInFirstButNotInSecond(){
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
        firstList.add(10);
        firstList.add(18);
        firstList.add(45);
        firstList.add(60);
        firstList.add(24);
        
        secondList.add(12);
        secondList.add(24);
        secondList.add(35);
        secondList.add(48);
        secondList.add(65);
        List<Integer> result = ListOperationsUtility.getValuesInFirstButNotInSecond(firstList, secondList);
        System.assertEquals(true, result.contains(10),'msg');
        System.assertEquals(true, result.contains(147),'msg');
        system.debug('List ValuesInFirstButNotInSecond :' +result);
        
    }
        //ValuesInSecondButNotInFirst
    @IsTest
    static void testValuesInSecondButNotInFirst(){
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
        firstList.add(10);
        firstList.add(18);
        firstList.add(45);
        firstList.add(60);
        firstList.add(24);
        
        secondList.add(12);
        secondList.add(24);
        secondList.add(35);
        secondList.add(48);
        secondList.add(65);
        List<Integer> result = ListOperationsUtility.getValuesInSecondButNotInFirst(firstList, secondList);
        System.assertEquals(true, result.contains(147),'msg');
        System.assertEquals(true, result.contains(12),'msg');
        system.debug('List ValuesInSecondButNotInFirst :' +result);
        
    }
        //Even values
    @IsTest
    static void testEvenValues(){
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
        firstList.add(10);
        firstList.add(18);
        firstList.add(45);
        firstList.add(60);
        firstList.add(24);
        
        secondList.add(12);
        secondList.add(24);
        secondList.add(35);
        secondList.add(48);
        secondList.add(65);
        List<Integer> result = ListOperationsUtility.getEvenValues(firstList, secondList);
        System.assertEquals(true, result.contains(12),'msg');
        System.assertEquals(true, result.contains(147),'msg');
        system.debug('List EvenValues :' +result);
        
    }
        //Odd Values
    @IsTest
    static void testOddValues(){
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
        firstList.add(10);
        firstList.add(18);
        firstList.add(45);
        firstList.add(60);
        firstList.add(24);
        
        secondList.add(12);
        secondList.add(24);
        secondList.add(35);
        secondList.add(48);
        secondList.add(65);
        List<Integer> result = ListOperationsUtility.getOddValues(firstList, secondList);
        System.assertEquals(true, result.contains(17),'msg');
        System.assertEquals(true, result.contains(178),'msg');
        system.debug('List OddValues :' +result);
        
    }
        //sum of Even Values
    @IsTest
    static void testSumOfAllEvenValues(){
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
        firstList.add(10);
        firstList.add(18);
        firstList.add(45);
        firstList.add(60);
        firstList.add(24);
        
        secondList.add(12);
        secondList.add(24);
        secondList.add(35);
        secondList.add(48);
        secondList.add(65);
        List<Integer> result = ListOperationsUtility.getSumOfAllEvenValues(firstList, secondList);
        System.assertEquals(true, result.contains(112),'msg');
        System.assertEquals(true, result.contains(230),'msg');
        system.debug('List SumOfAllEvenValues :' +result);
        
    }
        //sum of odd values
    @IsTest
    static void testSumOfAllOddValues(){
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
        firstList.add(10);
        firstList.add(18);
        firstList.add(45);
        firstList.add(65);
        firstList.add(24);
        
        secondList.add(12);
        secondList.add(24);
        secondList.add(35);
        secondList.add(48);
        secondList.add(65);
        List<Integer> result = ListOperationsUtility.getSumOfAllOddValues(firstList, secondList);
        System.assertEquals(true, result.contains(271),'msg');
        System.assertEquals(true, result.contains(280),'msg');
        system.debug('List Sum of all odd values :' +result);
        
    }
        //multiple of 3 values
    @IsTest
    static void getSumOfAllMultiplesOfThreeValues(){
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
        firstList.add(10);
        firstList.add(18);
        firstList.add(45);
        firstList.add(60);
        firstList.add(24);
        
        secondList.add(12);
        secondList.add(24);
        secondList.add(35);
        secondList.add(48);
        secondList.add(65);
        List<Integer> result = ListOperationsUtility.getSumOfAllMultiplesOfThreeValues(firstList, secondList);
        System.assertEquals(true, result.contains(393),'msg');
        System.assertEquals(true, result.contains(400),'msg');
        system.debug('List SumOfAllMultiplesOfThreeValues :' +result);
        
    }
}