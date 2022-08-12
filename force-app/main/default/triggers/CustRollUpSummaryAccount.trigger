trigger CustRollUpSummaryAccount on Contact (after insert,after update, after delete) {
    
    //New List to perform DML on the final List of Accounts
    List<Account> List2Update = New List <Account>();
    
    //New Set of Account Ids that'd be used to get Accounts & Contacts List
    Set<ID> accountIds = New Set <ID>();
    
    //Using Context variables and populating the above Set
    If (trigger.isInsert || trigger.isUpdate) {
        for (contact c1:Trigger.New){
            accountIds.add(c1.AccountId);
        }
    } else If (trigger.isDelete) {
        for (contact c2:Trigger.Old){
            accountIds.add(c2.AccountId);
        }
    }
    
    //List of Accounts in this trigger populated using SOQL
    List <Account> accountList = New List <Account>();
    accountList = [SELECT Id FROM Account WHERE ID IN:accountIds];
    
    //List of Contacts in this trigger populated using SOQL
    List <Contact> contactList = New List <Contact>();
    contactList = [SELECT id,accountid,salary__c FROM Contact WHERE accountid in:accountIds];
    
    //New Map for Accounts and List of its Contacts
    Map<Id,List<Contact>> accConMap = New Map <Id,List<Contact>>();
    
    //Iterate through Contacts and populate the above map
    For (Contact Con:contactList) {        
        If (!accConMap.keyset().contains(con.AccountId)) {
            accConMap.put(con.AccountId, New List<Contact>());
        }
        accConMap.get(con.AccountId).add(con);
    }
    
    //Iterate through accounts 
    For (Account acc:accountList) {
        Double Amount = 0;    
        
        If (accConMap.get(acc.Id) != null && accConMap.get(acc.Id).size() > 0) {
            //Iterate through List of Contacts and add the amounts in the Salary fields
            For (Contact con1:accConMap.get(acc.Id)){
                If (con1.Salary__c != null) {
                    Amount = Amount + con1.Salary__c;
                }
            }    
            
        }
        acc.Total_Salary__c = Amount; //Update the Total Salary field on Account
        List2Update.add(acc); //add account to final update List
        
    }
    update List2Update; //update the final list of Accounts
}