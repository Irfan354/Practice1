public class NameFromEmail {
   // requirement is to show palindrome is true or false
    public Boolean isPalindrome(String input){ // manam:!manam
        if(String.isBlank(input)){
            return true;
        }
        
        String lowerCaseString = input.toLowerCase();
        Integer lengthOfString = lowerCaseString.length();
        
        String inputwithNoSpecialChar = '';
        for(Integer i=0; i<10; i++){	// get the char  at i
            String stringAti = input.substring(i, i+1);		//check if it is alpha numeric
            Boolean isThisAlphaNumeric = stringAti.isAlphanumeric();		// if it is alpha numeric add it to inputwithNoSpecialChar
            if(isThisAlphaNumeric){
                inputwithNoSpecialChar = inputwithNoSpecialChar + stringAti;
            }																	// othr wise ignire it and just continue
            system.debug('inputwithNoSpecialChar' + inputwithNoSpecialChar);
        }
        //inputwithNoSpecialChar => manammanam;
        if(inputwithNoSpecialChar == inputwithNoSpecialChar.reverse()){
            return true;
        }
        return false;
    }
        
        
        //email first name, lastname
   /* public void myEmail(String str){
       // String str = 'irfan.shaik54@gmail.com';
        String [ ] str2 = str.split('@');
		System.debug(str2[0]); // firstName.LastName
		System.debug(str2[1]); // salesforce.com'
    }
    */
    
// palindrome 
    /*public void isPalindrome(String str) {
     String revStr = str.reverse();
    system.debug('Reversed string value is ' + revStr);
    if (str == revStr ) { 
        system.debug('String is Palindrom :'+revStr ); 
    }else { 
        system.debug('String is not Palindrom :'+revStr ); 
    }
    }*/
}