public class ListOperationsUtility {
//union
 public static List<Integer> getUnion(List<Integer>firstList, List<Integer>secondList){
        List<Integer> result = new List<Integer>();
     for(Integer val:firstList){
         result.add(val);
     }
     for(Integer val:secondList){
         result.add(val);
     }
     return result;
    }
//intersection
    public static List<Integer> getIntersection(List<Integer>firstList, List<Integer>secondList){
        List<Integer> result = new List<Integer>();
        for(Integer val:firstList){
            if(secondlist.contains(val)){
                result.add(val);
            }
        }
        for(Integer val:secondList){
            if(firstlist.contains(val)){
                result.add(val);
            }
        }
        return result;
    }
//diff A-B
 public static List<Integer> getValuesInFirstButNotInSecond(List<Integer>firstList, List<Integer>secondList){
        List<Integer> result = new List<Integer>();
        for(Integer val:firstList){
            if(!secondlist.contains(val)){
                result.add(val);
            }
        }
     return result;
 }
//diff B-A
public static List<Integer> getValuesInSecondButNotInFirst(List<Integer>firstList, List<Integer>secondList){
 List<Integer> result = new List<Integer>();
        for(Integer val:secondList){
            if(!firstlist.contains(val)){
                result.add(val);
            }
        }
        return result;
    }
//Even values
    public static List<Integer> getEvenValues(List<Integer>firstList, List<Integer>secondList){
        List<Integer> result = new List<Integer>();
        for(Integer val:firstList){
            if(math.mod(val,2)==0){
                result.add(val);
            }
        }
        for(Integer val:secondList){
            if(math.mod(val,2)==0){
                result.add(Val);
            }
        }
        return result;
    }
//Odd values
    public static List<Integer> getOddValues(List<Integer>firstList, List<Integer>secondList){
        List<Integer> result = new List<Integer>();
        for(Integer val:firstList){
            if(math.mod(val,2)!=0){
                result.add(val);
            }
        }
        for(Integer val:secondList){
            if(math.mod(val,2)!=0){
                result.add(Val);
            }
        }
        return result;
    }
    // sum of even values
  public static List<Integer> getSumOfAllEvenValues(List<Integer> firstSet, List<Integer> secondSet) {
        List<Integer> result = new List<Integer>();
        integer sumVal1=0;
        integer sumVal2=0;
        for(Integer first : firstSet) {
           if(math.mod(first,2)==0){
               sumVal1 += first;
           }
        }
       result.add(sumVal1);
        for(Integer second : secondSet) {
            if(math.mod(second,2)==0){
            sumVal2 += second;
        }
        }
        result.add(sumVal2);
        return result;
    }
    // sum of odd values
 public static List<Integer> getSumOfAllOddValues(List<Integer> firstSet, List<Integer> secondSet) {
        List<Integer> result = new List<Integer>();
        integer sumVal1=0;
        integer sumVal2=0;
        for(Integer first : firstSet) {
           if(math.mod(first,2)!=0){
               sumVal1 += first;
           }
        }
       result.add(sumVal1);
        for(Integer second : secondSet) {
            if(math.mod(second,2)!=0){
            sumVal2 += second;
        }
        }
        result.add(sumVal2);
        return result;
    }
 // sum of multiple of 3 values
    public static List<Integer> getSumOfAllMultiplesOfThreeValues(List<Integer> firstSet, List<Integer> secondSet) {
        List<Integer> result = new List<Integer>();
        integer sum =0;
        for(Integer val1:firstSet){
            if (math.mod(val1,3)==0) {  //1 6 9 10 14 - // 6 +9-15
               sum = sum+ val1; 
            }
        }
        for(Integer val2:secondSet){    // 3 5 8 10 
            if (math.mod(val2,3)==0) {
              sum = sum+ val2; 
            }
        }
       result.add(sum); //18
		 return result;
}

}