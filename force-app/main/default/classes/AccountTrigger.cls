public class AccountTrigger {
public static void AccountTriggerMethod(List<Account>newList){
    for(Account acc : newList){
        if(acc.Industry != null && acc.Industry == 'Media'){
            acc.Rating='Hot';
        }else{
            acc.Rating='cold';
        }
    }
}
}