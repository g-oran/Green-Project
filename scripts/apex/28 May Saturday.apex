// Implicit Conversion

Integer num = 5; // whole number
Decimal newNumber = num; // decimal number - 5.00
System.debug(newNumber);

Decimal dnum = 3.55;
Integer newNum = dnum;
System.debug(newNum); // will not work, data loss from 3.55 to 3.00

Double doubleNum = 256.5465;
Decimal decNum = doubleNum;
System.debug(decNum);

// Explicit Conversion

String num = '10';
Integer convertedNum = Integer.valueOf(num);
System.debug(convertedNum + 1);

Integer count = 96;
String str = String.valueOf(count);
System.debug(str + '1'); //961

Date dt = Date.newInstance(2022, 05, 28);
System.debug(dt); // date type

String dtStr = String.valueOf(dt);
System.debug(dtStr); // string type


