// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Kenny';
System.debug('Hello Clarusway!');
System.debug('My name is ' + tempvar);

Account myAccount = new Account(Name = 'Blue Company');
insert myAccount;

//Primitive Types

/*Primitive Types
is important*/

Blob myBlob;
myBlob.
System.debug(myBlob);

string myString;
System.debug(myString);

string firstName = 'Kenny';
System.debug (firstName);

Date currentDate = Date.today();
System.debug(currentDate);

Date foundationDate = Date.parse('04/05/2022');
System.debug(foundationDate);