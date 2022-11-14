trigger Tr_1509_EmplUpdt on User (after insert) {
Map<Id,User> userMap = Trigger.newMap;
    Set<Id> userId = userMap.keySet();
    Cls_1509_EmplUpdt.getEmployee(userId);
}