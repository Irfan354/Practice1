public with sharing class SetOperationsUtility {
    //Union
    public static Set<Integer> getUnion(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        for(Integer val : firstSet) {
            result.add(val);
        }
        for(Integer val : secondSet) {
            result.add(val);
        }
        return result;
    }
    //Intersection
    public static Set<Integer> getIntersection(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        for(Integer val:firstSet){
            if (secondSet.contains(val)){
                result.add(val); 
            }
        }
        return result;
    }
    //Difference A-B
    public static Set<Integer> getValuesInFirstButNotInSecond(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        for(Integer val:firstSet){
            result.add(val);
        }
        return result;
    }
    //Difference B-A
    public static Set<Integer> getValuesInSecondButNotInFirst(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        for(Integer val:secondSet){
            result.add(val);
        }
        return result;
    }

   /* // repeated values
    public static Set<Integer> getRepeatedValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        for(Integer val:firstSet){
            if (val.findDuplicates(result).size==0) {
                result.
            }
            result
        }
        for(Integer val:secondSet){
            if (val.findDuplicates(result).size==0) {
                result.
            }
            result
        }

        return result;
    }
    //non repeated values
    public static Set<Integer> getNonRepeatedValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        for(Integer val:firstSet){
            if (val.findDuplicates(result).size!=0) {
                result.
            }
            result
        }
        for(Integer val:secondSet){
            if (val.findDuplicates(result).size!=0) {
                result.
            }
            result
        }
        return result;
    }*/
    //Odd values
    public static Set<Integer> getAllOddValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        for(Integer val:firstSet){
            if (math.mod(val,2)!=0) {
                result.add(val);
            }
        }
        for(Integer val:secondSet){
            if (math.mod(val,2)!=0) {
                result.add(val);
            }
        }
        return result;
    }
    //even values
    public static Set<Integer> getAllEvenValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        for(Integer val:firstSet){
            if (math.mod(val,2)==0) {
                result.add(val);
            }
        }
        for(Integer val:secondSet){
            if (math.mod(val,2)==0) {
                result.add(val);
            }
        }
        return result;
    }
    // sum of even values
  public static Set<Integer> getSumOfAllEvenValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        integer sumVal1=0;
        integer sumVal2=0;
        for(Integer first : firstSet) {
           if(math.mod(first,2)==0){
               sumVal1 += first;
           }
        }
       
        for(Integer second : secondSet) {
            if(math.mod(second,2)==0){
            sumVal2 += second;
        }
        }
        result.add(sumVal1+sumVal2);
        return result;
    }
    // sum of odd values
 public static Set<Integer> getSumOfAllOddValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        integer sumVal1=0;
        integer sumVal2=0;
        for(Integer first : firstSet) {
           if(math.mod(first,2)!=0){
               sumVal1 += first;
           }
        }
       
        for(Integer second : secondSet) {
            if(math.mod(second,2)!=0){
            sumVal2 += second;
        }
        }
        result.add(sumVal1+sumVal2);
        return result;
    }
 // sum of multiple of 3 values
    public static Set<Integer> getSumOfAllMultiplesOfThreeValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
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