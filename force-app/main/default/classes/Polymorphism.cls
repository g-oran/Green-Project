public class Polymorphism {
    public void testOne(){
        System.debug('No parameter');
    }	
    public void testOne(String test){
        System.debug('String parameter' + test);
    }
	public void testOne(Integer test1){
        System.debug('Integer parameter' + test1);
    }
}

Polymorphism test = new Polymorphism();
test.testOne();
test.testOne('test');
test.testOne(5);