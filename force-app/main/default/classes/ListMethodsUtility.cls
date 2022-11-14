public with sharing class ListMethodsUtility {

public List<Integer> myList = new List<Integer>();
//add method
public void  addMethod(List<Integer> a){ //in list  method wecant add whole list so we ve to iterate the values one by one
    /*for(Integer val : a){
   // this.myList.add(val); 
   myList.add(val);  
    }*/
    myList.addAll(a);
    system.debug('add'+myList);
   ///after return debug stat cant write bcuz it cant reach
}
//add Index method
public void addIndex(List<Integer> a){
for (Integer val: a){
     this.myList.add(val);                                        
}
this.myList.add(2,100);  
}
//addAll method
public void addAll(List<Integer> a,List<Integer> b){
    List<Integer> myListAll = new List<Integer>();
    for(Integer val:a){
        this.myList.add(val);
    }
    for(Integer val : b){
        myListAll.add(val);
    }
    this.myList.addAll(myListAll);
    //
}
//clear method
public void clearMethod(List<Integer> a){//to clear some elements we need some elements to be added so a,b
for(Integer val:a){
    this.myList.add(val);
}
    this.myList.clear();
    //
}
//clone method
public void cloneMethod(List<Integer> a){
    for(Integer val: a){
        this.myList.add(val);
    }
    this.myList.clone();
    //return myList;
}
//contains method
public void containMethod(List<Integer> a){
    for(Integer val : a){
        this.myList.add(val);
    }
    this.myList.contains(10);
    //
}
//isEmpty
public void isEmptyMethod(List<Integer> a){
    for(Integer val : a){
        this.myList.add(val);
    }
    this.myList.isEmpty();
    //
}
//isEquals
public void equalsMethod(List<Integer> a, List<Integer> b){
    List<Integer> myList1 = new List<Integer>();
    for(Integer val : a){
        this.myList.add(val);
    }
    for(Integer val:b){
        myList1.add(val);
    }
    this.myList.equals(myList1);
    //
}
//size
public void sizeMethod(List<Integer> a){
    for(Integer val : a){
        this.myList.add(val);
    }
    this.myList.size();
    //
}
//sort
public void sortMethod(List<Integer> a){
    for(Integer val : a){
        this.myList.add(val);
    }
    this.myList.sort();
    //
}

}