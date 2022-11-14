@IsTest
public with sharing class SetMethodsUtilityTest {
   
        @IsTest
        static void testAddMethod(){ //if we declre a static in method we doont have acreate a instance. we can call that method directly.
            Set<Integer> mySet1 = new Set<Integer>();
            mySet1.add(10);
            mySet1.add(20);
            Set<Integer> res = SetMethodsUtility.addMethod(mySet1);
            system.assertEquals(true, res.contains(10));
            system.debug('added'+ res);
        }
       //addAll
       @IsTest
        static void testAddAll(){
         Set<Integer> mySet1 = new Set<Integer>(); 
            mySet1.add(1);
            mySet1.add(3);
            mySet1.add(5);
          Set<Integer> mySet2 = new Set<Integer>();
            mySet2.add(2);
            mySet2.add(4);
            mySet2.add(6);
            Set<Integer> res = SetMethodsUtility.addAll(mySet1,mySet2);
            system.assertEquals(true, res.contains(1));
            system.debug('index'+ res);
        }
        
      @IsTest
        static void testClearMethod(){
            Set<Integer> setA = new Set<Integer>();
            setA.add(10);
            setA.add(20);
            setA.add(30);
          Set<Integer> res = SetMethodsUtility.clearMethod(setA);
            system.debug('clear'+ res);
            system.assertEquals(false, res.contains(20));
        }
        @IsTest
        static void testCloneMethod(){
            Set<Integer> setA = new Set<Integer>(); //when we aare comparing only weve 2 params or adding all //set does nt allw dplcts
            setA.add(10);
            setA.add(20);
            setA.add(30);
           Set<Integer> res = SetMethodsUtility.cloneMethod(setA);
            system.debug('contain' + res);
            system.assertEquals(true, res.contains(20));
        }
          @IsTest
        static void testContainMethod(){
            Set<Integer> setA = new Set<Integer>(); //when we aare comparing only weve 2 params or adding all //set does nt allw dplcts
            setA.add(10);
            setA.add(20);
            setA.add(30);
           Set<Integer> res = SetMethodsUtility.containMethod(setA);
            system.debug('contain' + res);
            system.assertEquals(true, res.contains(20));
        }
         @IsTest
        static void testIsEmptyMethod(){
            Set<Integer> setA = new Set<Integer>(); 
            setA.add(10);
            setA.add(20);
            setA.add(30);
           Set<Integer> res = SetMethodsUtility.isEmptyMethod(setA);
            system.debug('contain' + res);
            system.assertEquals(false, res.contains(20));
        }
         @IsTest
        static void testIsEqualsMethod(){
            Set<Integer> setA = new Set<Integer>(); //when we aare comparing only weve 2 params or adding all //set does nt allw dplcts
            setA.add(10);
            setA.add(20);
            setA.add(30);
            Set<Integer> setB = new Set<Integer>(); 
            setB.add(10);
            setB.add(20);
            setB.add(30);
           Set<Integer> res = SetMethodsUtility.equalsMethod(setA, setB);
            system.debug('contain' + res);
            system.assertEquals(true, res.contains(20));
        }
       @IsTest
        static void testSizeMethod(){
            Set<Integer> setA = new Set<Integer>(); 
            setA.add(10);
            setA.add(20);
            setA.add(30);
           Set<Integer> res = SetMethodsUtility.sizeMethod(setA);
            system.debug('contain' + res);
            system.assertEquals(3, res.size());
        }
    }