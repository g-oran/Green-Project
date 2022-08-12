public class Calculations {
    public static Integer caloriCalculation(Integer weight){
        Integer totalCalori = weight * 200;
        return totalCalori;
    }
    public static Decimal calculateAreaofCircle(Decimal r){
        final Decimal PI = 3.14;
        Decimal A = PI * r * r;
        return A;
    }
}