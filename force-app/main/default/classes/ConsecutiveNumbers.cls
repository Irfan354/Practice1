public class ConsecutiveNumbers {
    
    public static Integer getMaxLength(integer l, integer n){
        integer count =0;
        integer result =0;
        
        for(integer i=0; i<n; i++){
            if(i==0){
                count =0;
            } 
            else {
                count++;
                result = Math.max(result,count);
            }
        }
        return result;
    }
    
}