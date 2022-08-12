public class Sunday {
	public String name;
    public Integer num;
    public Sunday(){
        name = 'Kenny';
        num = 10;
    }
    public Sunday(String s, Integer n){
        name = s;
        num = n;
        System.debug('test');
    }
    public Sunday(String s, Integer n, Integer t){
        name = s;
        num = n + t;
    }
    public void sundayMethod(){
        System.debug('Name is ' + name);
        System.debug('Number is ' + num);
    }
}