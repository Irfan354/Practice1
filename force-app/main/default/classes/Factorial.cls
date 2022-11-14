public class Factorial {
    
    public void fact(Integer n)
    {
        long ans = 1;
        if (n < 0) {
            System.debug('No negative numbers');
        }
        else
        {
            for (Integer i = 1; i <= n; i++) {
                ans *= i;
            }
        }
        System.debug(ans);
        
    }
}