public class SetDemo {
	
    public void DemoMethod(){
        Set<String> strSet = new Set<String>();
        Set<String> strSet2 = new Set<String>();
        List<String> strList = new List<String>{'A','a'};
            
        strSet.add('USA');
        strSet2.add('UK');
       
        strSet.addAll(strList);
       // system.debug('strList'+strList);
        system.debug(strSet.contains('A'));
       // strSet.clear();
       strSet2 = strSet.clone(); 
        system.debug('strSet2'+strSet2);
    }
}