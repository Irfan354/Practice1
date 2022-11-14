public class CynosureGenericUtility {

public static CynoParent getRecordsOfMoreThanSalary(CynoParent firstRecord, CynoParent secondRecord){
    if (firstRecord.yearSalary == Null || firstRecord.yearSalary == 0) {
        return secondRecord;
    }
    if (secondRecord.yearSalary == Null || secondRecord.yearSalary == 0) {
        return firstRecord;
    }
    if (firstRecord.yearSalary > secondRecord.yearSalary) {
        return firstRecord;
    }
return secondRecord;
}
public static CynoAddress getDifferentAddress(CynoAddress currentAddress, CynoAddress permAddress) 
{
    if(currentAddress != null && permAddress != null)
    {
        if(permAddress != currentAddress)
        {
            return permAddress;
        }
        else
        {
            return currentAddress;
        }
    }
    
    return null;
}
public static CynoAddress getSameAddress(CynoAddress currentAddress, CynoAddress permAddress) 
{
    if(currentAddress != null && permAddress != null)
    {
        if(permAddress == currentAddress)
        {
            return permAddress;
        }
        else
        {
            return currentAddress;
        }
    }
    
    return null;
}

public static CynoParent getRecordWithBothParentsAreUnemployee(CynoParent firstRecord, CynoParent secondRecord) {
    if(firstRecord.unEmployee == true && secondRecord.unEmployee == true){
       return firstRecord;
       }
       
   return secondRecord;
}
public static CynoParent getRecordWithAnyParentsAreUnemployee(CynoParent firstRecord, CynoParent secondRecord) {
    if(firstRecord.unEmployee == true || secondRecord.unEmployee == true){
       return firstRecord;
       }
       
   return secondRecord;
}

}