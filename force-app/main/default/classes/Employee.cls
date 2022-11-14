public class Employee {
    
    public void employee() {
        Map<Integer,Decimal>empMap = new Map<Integer,Decimal>();
        Decimal empSalary;
        
        empMap.put(1,500);
        empMap.put(2,15000);
        empMap.put(3,5000);
        empMap.put(4,3000);
        empMap.put(7,25000);
        
        
        for(Integer salary : empMap.keySet()){	//Iterating the key elements of studentMap 
            
            if( math.mod(salary,2) == 0){	
                empSalary = (empMap.get(salary)*0.3); 
                empMap.put(salary,empSalary);	
                
            }else if( math.mod(salary,2) != 0){	
				empSalary = (empMap.get(salary)*0.5); 
                empMap.put (salary,empSalary);
            }
            
            system.debug('salary'+ empMap);
            
        }
    }
}