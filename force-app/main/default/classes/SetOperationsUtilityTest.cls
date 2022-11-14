@IsTest
public with sharing class SetOperationsUtilityTest {
    //Union
    @IsTest
    static void testUnion() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
        firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getUnion(firstSet, secondSet);
        System.assertEquals(true, result.contains(14),'msg');
        System.assertEquals(true, result.contains(20),'msg');
        System.debug('@@@@@ Result @@@@ '+result);
    }
    //intersection
    @IsTest
    static void testIntersection() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getIntersection(firstSet, secondSet);
        System.assertEquals(true, result.contains(1),'msg');
        System.assertEquals(true, result.contains(105),'msg');
        System.debug('@@@@@ Result @@@@ '+result);
    }
    //Difference A-B
    @IsTest
    static void testValuesInFirstButNotInSecond() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(15);
        firstSet.add(12);
        firstSet.add(19);

        secondSet.add(1);
        secondSet.add(10);
        secondSet.add(147);
        secondSet.add(12);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getValuesInFirstButNotInSecond(firstSet, secondSet);
        System.assertEquals(true, result.contains(10),'msg');
        System.assertEquals(false, result.contains(147),'msg');
        System.debug('@@@@@ Result @@@@ '+result);
    }
    //Difference B-A
     @IsTest
    static void testValuesInSecondButNotInFirst() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(10);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(17);

        Set<Integer> result = SetOperationsUtility.getValuesInSecondButNotInFirst(firstSet, secondSet);
        System.assertEquals(true, result.contains(147),'msg');
        System.assertEquals(false, result.contains(12),'msg');
        System.debug('@@@@@ Result @@@@ '+result);
    }
    //repeated values
   /* @IsTest
    static void testRepeatedValues() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getRepeatedValues(firstSet, secondSet);
        System.debug('@@@@@ Result @@@@ '+result);
    }
    //non repeated values
    @IsTest
    static void testNonRepeatedValues() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getNonRepeatedValues(firstSet, secondSet);
        System.debug('@@@@@ Result @@@@ '+result);
    }*/
    //Odd values
     @IsTest
    static void testAllOddValues() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getAllOddValues(firstSet, secondSet);
        System.assertEquals(true, result.contains(17),'msg');
        System.assertEquals(true, result.contains(178),'msg');
        System.debug('@@@@@ Result @@@@ '+result);
    }
    //even values
     @IsTest
    static void testAllEvenValues() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getAllEvenValues(firstSet, secondSet);
        System.assertEquals(true, result.contains(12),'msg');
        System.assertEquals(true, result.contains(147),'msg');
        System.debug('@@@@@ Result @@@@ '+result);
    }
    //sum of odd values
    @IsTest
    static void testSumOfAllOddValues() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getSumOfAllOddValues(firstSet, secondSet);
        System.assertEquals(true, result.contains(271),'msg');
        System.assertEquals(true, result.contains(280),'msg');
        System.debug('@@@@@ Result @@@@ '+result);
    }
    //sum of even vaalues
    @IsTest
    static void testSumOfAllEvenValues() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getSumOfAllEvenValues(firstSet, secondSet);
        System.assertEquals(true, result.contains(226),'msg');
        System.assertEquals(true, result.contains(230),'msg');
        System.debug('@@@@@ Result @@@@ '+result);
    }
    //sum of multiple 3 values
    @IsTest
    static void testSumOfAllMultiplesOfThreeValues() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getSumOfAllMultiplesOfThreeValues(firstSet, secondSet);
        System.assertEquals(true, result.contains(393),'msg');
        System.assertEquals(true, result.contains(400),'msg');
        System.debug('@@@@@ Result @@@@ '+result);
    }
}