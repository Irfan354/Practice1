//whenever creates an account name should changed to 'test'
trigger AccountName on Account (before insert) {
public static void caseStatusUpdateMethod3(List<Case> oldcaseList, List<Case> newcaseList){
        for(Case newcase : newcaseList){
            string newStatusName = newcase.Status;
            Case matchingOldCase;
            for(Case oldcase : oldcaseList){
                if(newcase.Id == oldcase.Id){
                    matchingOldCase = oldcase;
                    break;
                }
            }
            if(newStatusName != matchingOldCase.Status){
                newcase.Description = matchingOldCase.Description+'hello';
            }
        }
    }

}