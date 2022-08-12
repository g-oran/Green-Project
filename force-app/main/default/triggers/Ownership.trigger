trigger Ownership on Account (before insert) {
    for(Account acc : Trigger.new){
        if (acc.Industry == 'Banking') {
            acc.Ownership = 'Private';
        }
    }
}
// Example1: Whenever new account is created with industry as banking then set ownership as private.
// Before insert
// Industry = Banking
// Ownership = Private