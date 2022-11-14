trigger Practice on Account (before insert, before update) {
if(Trigger.isBefore){
	
		if(Trigger.isUpdate){
		
			User UserDetails = [select Id,Username from User where Id= :userinfo.getUserId()];
			String uName = UserDetails.Username;
			
			//Trigger.new values are editable within a Before event
			for(Account acc: Trigger.new){
				acc.Description = uName;
			}
		}
	}   
}