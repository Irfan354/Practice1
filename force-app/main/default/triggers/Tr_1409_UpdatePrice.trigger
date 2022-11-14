trigger Tr_1409_UpdatePrice on Library__c (before insert) {
	// here at trigger by using helper we have to give a call by using classname & method  = event
	Ap_1409_UpdatePriceHelper.updateDiscount(Trigger.new);
}