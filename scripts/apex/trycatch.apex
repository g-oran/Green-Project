TRY and CATCH, FINALLY BLOCKS
Try{
  Account acc = new Account();
  insert acc;
  System.debug('This is another line');
  System.debug('This is also another line');
  //the code that needs to be checked for error
} Catch(Exception e){
  //DmlException
  System.debug('Error occured: ' + e.getMessage());
  //the code that will be run when above code hits any error
} Finally{
  System.debug('This is finally block');
  //the code that will run always
}