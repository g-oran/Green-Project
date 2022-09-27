Public Boolean isTeenager(Integer age) {
    
    //code here
    if (age > 19 && age < 13){
        return false;
    }
    else{
        return true;
    }
    }


Boolean b = Boolean.isTeenager(9);
System.assertEquals(false, b);


public class CustomAuth {

    public Boolean isLoggedIn;
    private String username = 'usa';
    private String password = '123456';
    
    public void login(String un, String pw){
        
        if(username == un && password == pw) {
            isLoggedIn = true;
        } else {
            isLoggedIn = false; 
        }
    }
}