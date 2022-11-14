public class LcmGcd {
    public void f(Integer x,Integer y)
    {
        Integer a, b,t, gcd, lcm;
        
        System.debug('x:'+x+'y:'+y);
        a = x;
        b = y;
        while (b != 0) {
            t = b;
            b = math.mod(a,b);
            a = t;
        }
        gcd = a;
        lcm = (x*y)/gcd;
        System.debug(gcd);
        System.debug(lcm);
        
    }
}