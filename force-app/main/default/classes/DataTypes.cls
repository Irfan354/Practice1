public class DataTypes {
   //code practicing
    public void DataTypeDemo(){
        
       /* Account acc = new Account();
        acc.Name = 'Irfan';
        acc.Phone = '13454';
        acc.AccountNumber = '665465';
        system.debug('Account Details :' + acc);*/
        
        //List Collection Method
        List<String> strList = new List<String>(); 
        List<String> strList2 = new List<String>();
        Set<String> setStr = new Set<String>();		//we can use set method in list
        
        strList.add('uk');    //using add method
        strList.add(0,'usa'); //using add index method
        strList.add('uae');	
        
        strList2.add('ur');
        strList2.addAll(strList);	//adding all string elements with addAll method
        
        setStr.add('Japan');
        strList2.addAll(setStr); 	//using addAll method with set
        
        system.debug('stringlist : ' + strList);
        system.debug('stringLst2 : '+ strList2);
        system.debug('sets:' + setStr);
        
        
        
    }
    
    }