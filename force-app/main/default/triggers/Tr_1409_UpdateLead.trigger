trigger Tr_1409_UpdateLead on Lead (before insert,before update) {
//whenever a lead is created with lead source = web, then giving rating = cold otherwise hot. 
	List<Lead> ld = Trigger.new;
    for(Lead l : ld){
        if(l.LeadSource == 'web'){
            l.Rating = 'Cold';
            if(l.LeadSource == 'Phone Enquiry'){
                l.Rating = 'Hot';
            }
        }
        else{
            l.Rating = 'hot';
        }
    }
}