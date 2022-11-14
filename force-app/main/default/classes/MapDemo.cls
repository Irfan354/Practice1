public class MapDemo {
    public void MapMethod(){
        
        Map<Id,Account> accIdMap = new Map<Id,Account>([SELECT Id,Name From Account LIMIT 2]);
        system.debug('accidmap' + accIdMap);
        
        
        
        
        
       /* Map<Integer,String> strMap = new Map<Integer,String>();
        strMap.put(1, 'A');
        strMap.put(2,'b');
        strMap.put(3,'c');
        
        system.debug('strMap : '+strMap.ContainsKey(2)); //returns T or F that key, value is available or not
        system.debug('strMap : '+strMap.get(2)); //get the value of key alue pair */
        
        //system.debug('strMap : '+strMap);
        //strMap.remove(2);
        
       /* List<String> strList = new List<String>();// here we can use list mmethod for getting map values
        strList = strMap.values(); // method map values
        system.debug('strMap : '+strList);*/
        
       /* Set<Integer> intSet = new Set<Integer>();
        intSet = strMap.KeySet();//keysetMethod used to creat the set out of key elements in hashmap
        system.debug('keySet '+ intSet);*/
    }
}