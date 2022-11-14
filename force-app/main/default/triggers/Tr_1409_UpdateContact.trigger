trigger Tr_1409_UpdateContact on Contact (before insert,before update) {
//whenever a contact is created update it with phone = 665565, email = 'irfan,saj@gmail.com'

   List<Contact> con = Trigger.new;
    for(Contact cn : con){
        cn.Phone = '8801342';
        cn.Email = 'irfan.shaik@gmail.com';
    }
}