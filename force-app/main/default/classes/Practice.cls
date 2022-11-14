public class Practice {
        
        public void studentClass(){
            Map<Integer,String>studentMap = new Map<Integer,String>();
            studentMap.put(1, 'ClassX');
            studentMap.put(2, 'ClassX');
            studentMap.put(3, 'ClassX');
            studentMap.put(44, 'ClassX');
            studentMap.put(43, 'ClassX');
            studentMap.put(49, 'ClassY');
            studentMap.put(53, 'ClassY');
            
            system.debug('stuclass :' + studentMap); 			//here we will get the (key,value)pairs
            
            //seperate the key, value pairs and retrieve it by KeySet(),values() methods
            Set<Integer> studentSet = new Set<Integer>();
            studentSet = studentMap.keySet(); 					// keyset get the elements of Key
            system.debug('keys :' + studentSet); 				//executing the set of keys of studentSet
            system.debug('values :' + studentMap.values());		 //executing the values of studentMap
            
          	  for(Integer rollNumber : studentMap.keySet()){	//Iterating the key elements of studentMap 
               // system.debug('roll no. : ' + rollNumber);		// executing the keys of studentMap from rollnumber asigned
               // system.debug('value :' + studentMap.get(rollNumber)); //executing the values of studentMap - get() works fetching the values
                
                  
                if( math.mod(rollNumber,2) == 0){					  // we cant use % in apex so math.mod 
                    studentMap.put(rollNumber,'Class y ');			//here even are retrieved
                }else if( math.mod(rollNumber,2) != 0){				//here od elements are retrieved
                    studentMap.put (rollNumber,'Class x');
                }
                    
                system.debug('All Even to Y & All Odd to X :'+ studentMap);
            
            }
            
        }   
    }