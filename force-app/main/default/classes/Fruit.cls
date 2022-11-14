public class Fruit {
	
    private static Integer numOfFruits = 0;
    public String name;
    
    public void eatMe(){
        system.debug('eating : ' + name);
    }
    
    public static void incrementOfFruits(){
        numOfFruits++;
    }
    
    public static Integer getCountOfFruits(){
        return numOfFruits;
    }
}