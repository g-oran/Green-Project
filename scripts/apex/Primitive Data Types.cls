
// Single Line Comment Out Usage
// Primitive Types
// of the Apex

/* Multiple Lines
Comment Out Example
of the Apex. Excape
*/

// Use comment out for comments about code blocks and code functionality explanation
// Use comment out to exclude some code lines during code runnig
// Use camelCase variableName
// call any class method by using dot notation
// all unassigned variables returns Null (nothing or absence of data)
// a variable is a store for some data that can change over time
// primitive data types are the foundational data types


// Blob holds binary data. Used for storing web service and attachment data in database. Converts actual data to binary (101101000101010) and stores in variable.
String intro = 'Text for Blob';
Blob myBlob = Blob.valueOf(intro);
System.debug(myBlob);

// String is one of the widely used data type. Methods can be reached with dot notation. Memorizing some of the widely used methods can help in interviews.
// A variable can be decleared and initialized with a value or it can initialized without a value.
// After initial value, a variable can be reassigned with a different values. Previous assignment data will be owerriden.
String firstName;
System.debug(firstName);

firstName = 'Kenny';
System.debug(firstName);

firstName = 'John';
System.debug(firstName);

// Use decimal for currency
Decimal revenue;
revenue = 1000;
System.debug(revenue);

// Any decimal number between -2^63 to 2^63. If number out of decimal limit double can be used.
Double num = 554546464.546646;

// In flow same example can be built by assigning default value to a variable resource and using two Assignment nodes to reassign companyName.
String companyName = 'Blue Company';
companyName = 'Red Company';
companyName = 'Green Company';

//Date, DateTime and Time are specific data types. Static Date methods needs to be used in the assignment part
Date currentDate = Date.today();
System.debug(currentDate);

Date foundationDate = Date.parse('12/12/2001');
System.debug(foundationDate);

Datetime newDateTime = Datetime.now();
System.debug(newDateTime);

Time newTime = Time.newInstance(8, 34, 22, 0);
System.debug(newTime);

// Boolean has three different value options null, True, False. If you don't assign any value during initialization, then value will returm null. Best practice to set it False during initialization.
Boolean isChecked = False;
isChecked = True;
System.debug(isChecked);

// Used to store 18 char id data
Id accountId = '00123655PNM554fAsD';

// any number between -2.147.483.648 to 2.147.483.647.
Integer oNumber = 45;

// used for very big integer. Any number between -2^63 to 2^63. If number exceeds Integer limit (-2.147.483.648 to 2.147.483.647) use Long instead.
Long zNum = 21465464646L;

