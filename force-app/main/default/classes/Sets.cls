public class Sets {
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
}