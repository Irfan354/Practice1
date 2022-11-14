public class GreaterOfThree {
   /* public void myNum(Integer A, Integer B, Integer C){
        if(A>B && A>C){
            system.debug('A is greater' + A);
        }
        else if(B>A && B>C){
            system.debug('B is greater' + B);  
        }
        else {
            system.debug('C is greater');
        }
    }*/
    public void evenOdd(Integer X, String Y){
        if(Y == 'even' || Y == 'ev' ){
            Even(X);
        }
        else if(Y=='odd' || Y=='od'){
            odd(X);
        }
        else{
            system.debug('looks like u lost');
        }
    }
    
    //sum of even
    void Even(Integer N){
        Integer count=0;
        Integer R =0;
        
        while(N>count){
            R=R+count;
            count=count+2;
        }
        system.debug('even num'+R);
    }
    
    //sum of odd
    void odd(Integer N){
        Integer count=1;
        Integer R =0;
        
        while(N>count){
            R=R+count;
            count=count+2;
        }
        system.debug('even num'+R);
    }
}