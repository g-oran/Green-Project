@isTest
public class Ownership_Test {
    @isTest
    public static void OwnershipMethod_Test(){
    // create account data
    Account acc = new Account(Name = 'Test Account', Industry = 'Banking');
    // execute database save
    insert acc;
    // check data from the database
    Account acc1 = [Select Ownership from Account where Id = :acc.Id];
    System.assertEquals('Private', acc1.Ownership, 'Ownership is not matching!');
    }
}
// Example1: Whenever new account is created with industry as banking then set ownership as private.
// Before insert
// Industry = Banking
// Ownership = Private