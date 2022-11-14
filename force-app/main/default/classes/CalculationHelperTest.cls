@isTest
public class CalculationHelperTest {
   
  /*  static testmethod void testGetAddition(){
        CalculationHelper helper = new CalculationHelper();
        Integer result = helper.getAddition(2, 3);
        system.assertEquals(5,result);

        Integer result1 = helper.getAddition(4, 5);
        system.assertEquals(9,result1);
        Integer result2 = helper.getAddition(4, 5);
        system.assertNotEquals(10,result2);     
    }
    static testmethod void testGetSubstraction(){
     CalculationHelper helper = new CalculationHelper();
        Integer result3 = helper.getSubstraction(4, 5);
        system.assertEquals(1,result3);
        Integer result2 = helper.getSubstraction(10, 3);
        system.assertEquals(7,result2);
         Integer result4 = helper.getSubstraction(4, 5);
        system.assertNotEquals(14,result4);
    }
    static testmethod void testGetMultiplication(){
        CalculationHelper helper = new CalculationHelper();
         Integer result5 = helper.getMultiplication(4, 5);
        system.assertEquals(20,result5);
         Integer result6 = helper.getMultiplication(4, 5);
        system.assertNotEquals(19,result6); 
    }
    static testmethod void testEvenOdd(){
        CalculationHelper helper = new CalculationHelper();
        Integer result5 = helper.evenOdd(8);
        system.assertEquals(0,result5);
        Integer result6 = helper.evenOdd(5);
        system.assertEquals(1,result6);
    }
    static testmethod void testPalindrome(){
     CalculationHelper helper = new CalculationHelper();
        String result = helper.palindrome('MadaM');
         system.assertEquals('Palindrome',result);
        String result1 = helper.palindrome('Ramesh');
         system.assertEquals('Not Palindrome',result1);    
    }*/
    
  /*  @IsTest
    static void getAddOperations(){
        CalculationHelper helper = new CalculationHelper();
        
        Integer res = helper.testAdd(2,3);
        system.assertEquals(5, res);
    }
    @IsTest
    static void getSubtractOperations(){
         CalculationHelper helper = new CalculationHelper();
       Integer res = helper.testSubtract(10,5);
        system.assertEquals(5, res);
        system.debug('subs'+res);
    }*/
    @IsTest
    static void testAddMethod(){ //if we declre a static in method we doont have acreate a instance. we can call that method directly.
        List<Integer> myList1 = new List<Integer>();
        myList1.add(10);
        myList1.add(20);
        List<Integer> res = CalculationHelper.addMethod(myList1);
        system.assertEquals(true, res.contains(10));
        system.debug('added'+ res);
    }
    @IsTest
    static void testAddIndex(){ ///here were dealing with index,listelement so to add element weve to add index here
        List<Integer> myList1 = new List<Integer>();
        myList1.add(1,100);
        myList1.add(3,200);
        List<Integer> res = CalculationHelper.addIndex(myList1);
        system.debug('index'+ res);
        system.assertEquals(3, res.size());
        
    }
   @IsTest
    static void testAddAll(){
     List<Integer> myList1 = new List<Integer>(); 
    	myList1.add(1);
        myList1.add(3);
        myList1.add(5);
      List<Integer> myList2 = new List<Integer>();
        myList2.add(2);
        myList2.add(4);
        myList2.add(6);
        List<Integer> res = CalculationHelper.addAll(myList1,myList2);
        system.assertEquals(true, res.contains(1));
        system.debug('index'+ res);
    }
    
  @IsTest
    static void testClearMethod(){
        List<Integer> listA = new List<Integer>();
        listA.add(10);
        listA.add(20);
        listA.add(30);
      List<Integer> res = CalculationHelper.clearMethod(listA);
        system.debug('clear'+ res);
        system.assertEquals(false, res.contains(20));
    }
    @IsTest
    static void testCloneMethod(){
        List<Integer> listA = new List<Integer>(); //when we aare comparing only weve 2 params or adding all //set does nt allw dplcts
        listA.add(10);
        listA.add(20);
        listA.add(30);
       List<Integer> res = CalculationHelper.cloneMethod(listA);
        system.debug('contain' + res);
        system.assertEquals(true, res.contains(20));
    }
      @IsTest
    static void testContainMethod(){
        List<Integer> listA = new List<Integer>(); //when we aare comparing only weve 2 params or adding all //set does nt allw dplcts
        listA.add(10);
        listA.add(20);
        listA.add(30);
       List<Integer> res = CalculationHelper.containMethod(listA);
        system.debug('contain' + res);
        system.assertEquals(true, res.contains(20));
    }
     @IsTest
    static void testIsEmptyMethod(){
        List<Integer> listA = new List<Integer>(); 
        listA.add(10);
        listA.add(20);
        listA.add(30);
       List<Integer> res = CalculationHelper.isEmptyMethod(listA);
        system.debug('contain' + res);
        system.assertEquals(false, res.contains(20));
    }
	 @IsTest
    static void testIsEqualsMethod(){
        List<Integer> listA = new List<Integer>(); //when we aare comparing only weve 2 params or adding all //set does nt allw dplcts
        listA.add(10);
        listA.add(20);
        listA.add(30);
        List<Integer> listB = new List<Integer>(); 
        listB.add(10);
        listB.add(20);
        listB.add(30);
       List<Integer> res = CalculationHelper.equalsMethod(listA, listB);
        system.debug('contain' + res);
        system.assertEquals(true, res.contains(20));
    }
   @IsTest
    static void testSizeMethod(){
        List<Integer> listA = new List<Integer>(); 
        listA.add(10);
        listA.add(20);
        listA.add(30);
       List<Integer> res = CalculationHelper.sizeMethod(listA);
        system.debug('contain' + res);
        system.assertEquals(3, res.size());
    }
     @IsTest
    static void testSortMethod(){
        List<Integer> listA = new List<Integer>(); 
        listA.add(2,10);
        listA.add(1,20);
        listA.add(0,30);
       List<Integer> res = CalculationHelper.sortMethod(listA);
        system.debug('contain' + res);
        system.assertEquals(3, res.size());
    }
}