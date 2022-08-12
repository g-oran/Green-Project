// Declare a string variable called companyName and assign a value
// Check available string methods
String companyName = 'blue company';
companyName = 'red company';
System.debug(companyName);


// Declare an integer variable called customerCount and assign a value
// Check Math class
Integer customerCount = 100;
Integer newCustomerCount = 10;
//Integer total = customerCount + newCustomerCount;
System.debug(customerCount + newCustomerCount);

Integer count = 50;
Decimal rand = (Math.random()*100).round();
System.debug(rand);


// Declare decimal revenue variable and assign to a value
// Check available methods
Decimal revenue = 10000;
System.debug(revenue);


// Declare date, datetime and time variables assign values
// Check available methods
Date myDate = Date.newInstance(2022, 05, 23);
Date todaysDate = Date.today();
System.debug(todaysDate);

Datetime myDateTime = Datetime.newInstance(2022, 05, 23, 05, 44, 30);
System.debug(myDateTime.format());

Time myTime = Time.newInstance(06, 58, 23, 20);
System.debug(myTime);
Time newmyTime = myTime.addMinutes(13);
System.debug(newmyTime);

// Declare a boolean variable and assign a value
Boolean myBoolean = False;
System.debug(myBoolean); //null, true, false


// Declare a blob and convert a string to blob
// Check available methods
Blob myBlob = Blob.valueOf('This is a test!');
System.debug(myBlob.size());

//.........................COLLECTIONS..............


// Declare List collection variable with values
// Order is important
// Same items can be recorded multiple times
// add remove methods
List<String> myList = new List<String>{'Blue', 'Red', 'Purple', 'Red'};
myList.add('White');
myList.add('Black');
myList.sort();
System.debug(myList.remove(myList.indexOf('Blue')));
System.debug(myList.size());
//System.debug(myList.get(5));
//System.debug(myList.indexOf('Blue'));




// Declare Set collection variable with values
// Order is not important
// Unique values stored in Set
// add remove methods
Set<Integer> myNums = new Set<Integer>{1,5,9,4,5,5};
System.debug('Before List: ' + myNums);
myNums.add(10);
myNums.remove(5);
System.debug('After List: ' + myNums);




// Declare Map collection variable with values
// Key Value pairs
// Key is unique
// Value can be same
// put remove methods
Map<Integer,String> myMap = new Map<Integer,String>{12 => 'Mark', 13 => 'Mary', 14 => 'Mark'};
myMap.put(15, 'Kenny');
myMap.remove(15);

System.debug(myMap.get(12));
System.debug(myMap.values());
System.debug(myMap.keySet());



// Declare sOBjects (standard and custom)
Account myAccount = new Account();
myAccount.Name = 'Blue Company';
myAccount.BillingCountry = 'USA';
System.debug(myAccount);


School__c mySchool = new School__c();
mySchool.School_Name__c = 'Test School';
System.debug(mySchool);


//..................CONSTANTS............................


// Create Enum values for weekdays



// Declare a constant value use Final



// Operators











//..................CONTROL FLOW STATEMENTS..............


// If Else Statemets




System.debug('finish');


