/*"Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
Bonus: Can you do this in one pass?"*/

public class sumListTwoNum {
    public static boolean equalNum (List<Integer> lstNum, Integer k){
    Integer sum=0;
    for (Integer i=0; i< lstNum.size(); i++ ) {
        for (Integer j=0; j< lstNum.size()-1; j++ ) {
            sum = lstNum.get(i) + lstNum.get(j+1);
            if (sum == k){
                return true;
            }
        }
  }
    return false;
}
}