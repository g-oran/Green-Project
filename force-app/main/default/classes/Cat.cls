public class Cat {
	//	variables
	public String catName;
    private Integer catAge;
        
    // methods
    public Integer calori (Integer weight){
        Integer totalCalori = weight * 10; 
        return totalCalori;
    }
    
    public void namePrint(){
        System.debug ('The name of the cat is ' + catName);
    }
    	
}