global class MyFutureClass{
    @future
    public static void myMethod (string a, integer i){
        System.debug('Method called ' + a + 'and ' + i);
    }

}

//Apex code: MyFutureClass.myMethod('Future', 5);

//check in UI as Apex Jobs