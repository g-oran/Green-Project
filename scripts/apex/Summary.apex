APEX BASICS SUMMARY

1.  DATA TYPES
    a.  Primitive Data types
            // if you dont assign any value it will return null
        .   String
            String test = 'test'; // single quotes make anything string
            test.capitalize(); // available functions with . notation

        .   Integer
            Ingeter num = 4; // whole number up until ~2 billion (2,147,483,647)
            // available functions with . notation

        .   Long
            Long num = 99283928428298948L; // bigger than ~2 billion, use L at the end of value

        .   Decimal
            Decimal dec = 4.44; // decimal up to ~ 2 billon

        .   Double
            Double dec = 97532095702395.56; // more than ~2 billion

        .   Date
            Date dt = Date.newInstance(2022, 05, 29); // datetime and time logic is same
            Date current = Date.today();
            Date current = Date.format();             
        .   Datetime
        .   Time

        .   Boolean
            Boolean a = true; // True, False or Null

        .   Id
            Id test = '37HSKnndshg73uD'; // 15 or 18 char alphanumaric

        .   Blob
            Blob test = Blob.valueOf('Test'); // 1101 1001 - attachment, web services, files

    b.  Collections
        .   List
        List<String> myList = new List<String>();
        myList.add('test1');
        myList.add('test1');
        myList.remove(index);
        // indexed ordered list starting from 0
        // there can be multiple items

        .   Set
        Set<String> myList = new Set<String>();
        myList.add('test1');
        myList.add('test1'); // only one test1 will available
        myList.remove(index);
        // there is no index
        // values will store as unique

        .   Map
        Map<String,String> myList = new Map<String,String>();
        myList.put('0001', 'Mike');
        myList.put('0002', 'Mike'); // value can be same
        // key value pairs
        // keys should be unique
        // values can be same
        // Student Id keys
        // Student name values

    c.  Constants
        .   Final
        final Decimal PI = 3.14;
        final Decimal DiscrountRate = 3.5;
        PI = 3.24; // will throw error, you can't change final variable

        .   Enum 
        Enum String Season {'Winter', 'Summer'} // like global picklist
        Season.Winter;

2.  CONTROL FLOW STATEMENTS
    a.  If/Else
        if(logic true or false - x == 10) // if returns true
        {
            code block
        } 
        else if(different logic x < 3) // if returns true
        {
            code block
        }
        else if(different logic) // if returns true
        {
            code block
        }
        else
        {
            // eventually run
        }

    b.  Switch
        Integer x = 2;
        Switch on x {
            when 1 {

            }
            when 2, 4, 6 {

                //can have multiple logic on same block
            }
            when 9, 10 {

            }
            when else{

            }
        }

    c.  Loops
        .   Do While
            Do {
                // the code always will run at least one time
                // do not forget to add a stop logic like increase or decrease
            } while ()

        .   While
            While(){
                // there is an option to not run any code
                // do not forget to add a stop logic like increase or decrease
            }

        .   For
            .   Traditional For
            for(Integer i = 1;i<5;i++){
                code
            }

            .   List Set For
            List<Account> myList = List<Account>();
            myAccount.add(Name = 'Test Company');
            for(Account acc : myList){
                
            }

            .   SOQL For 
            for(Account acc : [Select Name form Account]){
                
            }

3.  CLASSES
    a.  Class
        public class Test{
            //blueprint, prototype
            // can have methods, variables
        } 

    b.  Method
        public class Test{
            public void newMethod(){
                // methods actions of classes
                // void returns nothong
                // if funtions returns data, return data type needs to replace void and return statement needs to be added
                // multiple methods and variables can be added to method
            }
        } 

    c.  Encapsulation
        // Wrapping (or Binding) method and data together into a single unit is known as encapsulation.
        // we do encapsulation with classes

    d.  Abstraction
        // Handle complexity by hiding unnecessary details from the user 
        // Interface, access modifiers

    e.  Inheritence
        // Derive a class from another class for a hierarchy of classes that share a set of attributes and methods
        // Interface, class extension
        // A class that extends another class inherits all the methods and properties of the extended class

    f.  Polymorphism
        // Polymorphism is an object-oriented programming concept that refers to the ability of a variable, function, or object to take on multiple forms

    g.  Inner Class/Outter Class
        // A class can have multiple inner classes
        // Only one level depth
        
    h.  Try Catch Finally Error Handling
        // For exception handling
        // Try block runs the target code
        // Catch block only runs when exception thrown
        // Finally block optional, but once added always runs regardles of the try block output