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
//System.debug(myMap.get(12));
System.debug(myMap.values());



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
// Like Global Picklist

public Enum weekdays {MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY}

System.debug(weekdays.MONDAY);
System.debug(weekdays.values());


// Declare a constant value use Final

final String TEXT = 'Kenny';
//TEXT = 'Mark'; (not going to work) Use all capital letters for variable text
System.debug(TEXT);

final Date companyFoundationDate = Date.newInstance(2022, 05, 25);
System.debug(companyFoundationDate.format());

final Decimal PI = 3.14;


// Date Format - yyyy/MM/dd hh:mm:ss

// Operators

    // =      Assignment / not math equilty
Integer num = 5; 
num = 8;
num = 10;

    // ==     !=     /compare equility 
Integer a = 9;
Integer b = 10;
System.debug(a == b); // returns false, checks only value


    // ===    !==
Account acc = new Account(Name = 'Test');
Account acc1 = new Account(Name = 'Test');
acc = acc1;
System.debug(acc === acc1); // returns false check memory allocation space (are they same data or not)

    // <, >
Integer num1 = 10;
Integer num2 = 20;
System.debug(num2 > num1);
System.debug(num1 > num2);


    // && (AND), || (OR) 
Integer num1 = 10;
Integer num2 = 20;
Integer num3 = 30;
System.debug((num2 > num1) && (num3 < num1));
System.debug((num2 > num1) || (num3 < num1));


    // Math operators (+, -, *, /)
Integer num1 = 10;
Integer num2 = 20;
Integer num3 = 30;
Integer total = num1 + num2 + num3;
Integer newNum3 = num3 - 5;

    // x += 1    x = x + 1
Integer x = 1;
x = x + 2;  // x += 2
x += 2;
x = x / 2;  // x /= 2
System.debug(x);

    // x++, x--    short form for increment and decrement
Integer x = 1;
x++;
x--;
System.debug(x);




//..................CONTROL FLOW STATEMENTS..............


// Conditional (If Else) Statemets

Decimal revenue = 3500;

if(revenue > 5000)
{
    System.debug(revenue + ' revenue is great!');
}
else if ((revenue < 5000) && (revenue > 4000))
{
    System.debug(revenue + ' revenue can be considered good!');
}
else if((revenue < 4000) && (revenue > 3000))
{
    System.debug(revenue + ' revenue is good!');
}
else
{
    System.debug(revenue + ' revenue is not so great!');
}

// Switch Statements (only integer, long, string, sObject, enum)

Integer point = 50;

switch on point {
        when 10 {
        System.debug('Gold medal');
    }
    when 9 {
        System.debug('Silver medal');
    }
    when 8 {
        System.debug('Bronze medal');
    }
    when else{
        System.debug('No medal');
    }
}


// LOOPS

    // Do While Loop
Integer num = 1;

Do {
    System.debug('Number is ' + num);
    num++; // important
} while (num < 5);

    // While Loop

Integer num = 1;
while (num < 5){
    System.debug('Number is ' + num);
    num++; // important
}


    // For Loops

            // Traditional For Loop
/* for (initial condition; exit condition; increment or decremet) {
    code block
    }*/
for (Integer num = 1; num < 5; num++){
    System.debug('Number is ' + num);
}

            // List or Set For Loop
List<String> myList = new List<String>{'Red', 'Yellow', 'Green'};
for (String item : myList){
    System.debug('My favoritte color is ' + item);
}


List <String> days = new List<String>{'Monday','Friday','Saturday'};
for (String a: days){
    System.debug('My lucky day is '+ a);
}
            // SOQL For Loop
for (Account acc : [Select Name from Account]){
    System.debug(acc.Name);
}


