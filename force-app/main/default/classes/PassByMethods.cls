public with sharing  class PassByMethods {
	//pass by value for primitive data types
	
    public static void multiplyBy(Integer a){
        a = a * 2;
        system.debug('by 2 is ' + a); //is 6
    } 
    
    public static void myString(String myStr){
        myStr = myStr + 'hello';
        system.debug('string ' + myStr); // hey hello
    }
    
    //pass by reference  - sobjects
    public static void changeName(Account myAcc){
        myAcc.Name = 'changed this';	//assigning
        system.debug('myacc ' + myAcc);
    }
    
    public static void changeAccount(Account acc){
         acc = new Account(); //intialising object
        acc.Name = 'someone changed'; //assigning
        system.debug('someone' + acc);
    }
    
    //collections - pass by ref
	public static void myList(List<String> listStr){
        listStr.add('me too');
        system.debug('bfr list' + listStr);	//irfan,shaik,me too
    }
    
    public static void myNewList(List<String> newStrl){
        newStrl = new List<String>{'Imran','mohd'}; //bcuz here we intialize the objt
            system.debug('mean list' + newStrl); //imran,mohd
        newStrl.add('hello there');
        system.debug('bfr list' + newStrl);	////imran,mohd,hello there
    }
    
    public static void newKeyToMyMap(Map<String, String> myMap){
        myMap.put('irfan','shaik');
        system.debug('bfr map ' + myMap ); //hey=you , imran=mhd, irfan=shaik
    }
    
    public static void changeMyMap(Map<String, String> myMap){
        myMap = new Map<String,String>();
        myMap.put('irfan','shaik');
        system.debug('bfr map ' + myMap ); // irfan=shaik
    }
    
    public static void addOneMoreStringToMap(Map<String, List<String>> ourMap){
        ourMap.put('dogs',new List<String>{'pug','pam'});
        system.debug('bfr map' + ourMap);	//dogs=(pug, pam), hey=(coke, coco, sprite), imran=(german, pug)
    }
    
}