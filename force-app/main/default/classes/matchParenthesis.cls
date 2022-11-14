public class matchParenthesis {
	
   public static Boolean balancedBrackets(String input) {
    // this map holds every characters you want to check
    // the keys are the opening brackets
    // the values ares the closing brackets
    Map<String, String> opening = new Map<String, String>();
    opening.put('(', ')');
    opening.put('[', ']');
    opening.put('{', '}');
    opening.put('<', '>');

    // This set is used to check whether a char is a closing bracket
    // Keep in mind that Set.contains() runs in constant time
    Set<String> closing = new Set<String>(opening.values());
  
    // This list will hold the closing bracket instead of the opening one
    // so the check when we'll find a closing bracket will be smooth
    List<String> stack = new List<String>();
    Boolean isValid = true;

    for (String character : input.split('')) {
        if (opening.containsKey(character)) {
            // if the current char is an opening bracket
            // the related closing bracket is added to the list
            stack.add(opening.get(character));
        } else if (closing.contains(character)) {
            // if the current char is a closing bracket
            // it must be equal to the last char added to the list
            String s = stack.isEmpty() ? null : stack.remove(stack.size()-1);
            if (character != s) {
                // otherwise the brackets aren't balanced and we can stop iterating over characters
                isValid = false;
                break;
            }
        }
    } 
    // isValid is true only if the closing brackets are in the right order
    // the list is empty only if there is a closing bracket for every opening one 
    return isValid && stack.isEmpty();
}
    
}