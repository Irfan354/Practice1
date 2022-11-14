trigger AccountTrigger on Account(before insert){
  
    List<Account> myList = Trigger.new; //Trigger new always behaves as list
  	 system.debug('new' + trigger.new);
     system.debug('newMap ' + trigger.newMap);
     system.debug('old' + trigger.old);
     system.debug('oldMap' + trigger.oldMap);
}