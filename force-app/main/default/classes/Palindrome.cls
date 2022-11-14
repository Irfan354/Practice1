public class Palindrome {
    
    public void palindrome(String inputString){
        
        String reverseString ='';
        reverseString = inputString.reverse();
        
        if(inputString.equals(reverseString)){
            system.debug('String is Palindrome');
        }
        else{
            system.debug('String is not Palindrome');
        }   
    }   
}