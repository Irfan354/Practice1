public class CalculationHelper {

   /* public Integer getAddition (Integer a, Integer b){
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
    public Integer evenOdd(Integer a){
         if(math.mod(a, 2) == 0)
             return 0;
             else
               return 1;
    }
    public String palindrome(String inputString){ 
        String reverseString ='';
                                                                                                                                                                    String result1='';
        reverseString = inputString.reverse();
        
        if(inputString.equals(reverseString)){
            result1= 'Palindrome';
        }
        else{
            result1= 'Not Palindrome';
        }
        return result1;
    }*/ 
     
    //sum of two numbers
   // public Integer sum(integer a, integer b, integer c){
     //   return a = b+c;
       // system.debug('ans' + a);
    //}
//practice 1
/*    public Integer testAdd(Integer a , Integer b){
        return a+b;
    }
    public Integer testSubtract(Integer a, Integer b){
        return a-b;
    }*/
//Set Methods practice 
//add method
    public static List<Integer> addMethod(List<Integer> a){ //in list  method wecant add whole list so we ve to iterate the values one by one
        List<Integer> myList = new List<Integer>();
        for(Integer val : a){
         myList.add(val);   
        }
        system.debug('add'+myList);
       return myList; //after return debug stat cant write bcuz it cant reach
    }
//add Index method
    public static List<Integer> addIndex(List<Integer> a){
        List<Integer> myList = new List<Integer>();
   for (Integer val: a){
         myList.add(val);                                        
    }
	myList.add(2,100);
   return myList;   
    }
//addAll method
    public static List<Integer> addAll(List<Integer> a,List<Integer> b){
        List<Integer> myList = new List<Integer>();
        List<Integer> myListAll = new List<Integer>();
        for(Integer val:a){
            myList.add(val);
        }
        for(Integer val : b){
            myListAll.add(val);
        }
        myList.addAll(myListAll);
        return myList;
    }
//clear method
    public static List<Integer> clearMethod(List<Integer> a){//to clear some elements we need some elements to be added so a,b
    List<Integer> myList = new List<Integer>();
    for(Integer val:a){
        myList.add(val);
    }
        myList.clear();
        return myList;
    }
//clone method
    public static List<Integer> cloneMethod(List<Integer> a){
        List<Integer> listA = new List<Integer>();
        for(Integer val: a){
            listA.add(val);
        }
        listA.clone();
        return listA;
    }
//contains method
    public static List<Integer> containMethod(List<Integer> a){
        List<Integer> myList = new List<Integer>();
        for(Integer val : a){
            myList.add(val);
        }
        myList.contains(10);
        return myList;
    }
//isEmpty
	public static List<Integer> isEmptyMethod(List<Integer> a){
        List<Integer> myList = new List<Integer>();
        for(Integer val : a){
            myList.add(val);
        }
        myList.isEmpty();
        return myList;
    }
//isEquals
	public static List<Integer> equalsMethod(List<Integer> a, List<Integer> b){
        List<Integer> myList = new List<Integer>();
        List<Integer> myList1 = new List<Integer>();
        for(Integer val : a){
            myList.add(val);
        }
        for(Integer val:b){
            myList.add(val);
        }
        myList.equals(myList1);
        return myList;
    }
//size
	public static List<Integer> sizeMethod(List<Integer> a){
        List<Integer> myList = new List<Integer>();
        for(Integer val : a){
            myList.add(val);
        }
        myList.size();
        return myList;
    }
//sort
	public static List<Integer> sortMethod(List<Integer> a){
        List<Integer> myList = new List<Integer>();
        for(Integer val : a){
            myList.add(val);
        }
        myList.sort();
        return myList;
    }
}