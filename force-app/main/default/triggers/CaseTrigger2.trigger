trigger CaseTrigger2 on Case (before insert,before update, after insert) {
	AccTrgHandler handler = new AccTrgHandler();
    handler.run();
}