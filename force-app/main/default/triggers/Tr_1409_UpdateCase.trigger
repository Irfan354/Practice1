trigger Tr_1409_UpdateCase on Case (before insert) {
//whenever a case is created with origin = email, set status = 'in-progress' & priority = 'medium';
List<Case> cs = Trigger.new;
    for(Case c : cs){
        if(c.Origin == 'Email'){
            c.Status = 'Working';
            c.Priority = 'Medium';
        }
    }
}