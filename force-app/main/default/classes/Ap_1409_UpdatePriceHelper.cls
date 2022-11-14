public class Ap_1409_UpdatePriceHelper {
// requirement is to update the price of book with calculated discount - need objects - library, fields-price
    public static void updateDiscount(List<Library__c> library){
    for(Library__c bp : library){
        bp.Price__c = bp.Price__c * 0.9;
    }
}
}