trigger AfterTriggerExample on Contact (after insert) {
	// check is contact has account attached
	List<Account> accountsToBeInserted = new List<Account>();
    for(Contact con : Trigger.new){
        if(con.AccountId == null){
           // create an account
           Account acc = new Account();
           acc.Name = con.LastName;
           accountsToBeInserted.add(acc);
        }
    }
    insert accountsToBeInserted;
	// save account to database
}
// Create a trigger on contact which will create Account record whenever contact is created without an account