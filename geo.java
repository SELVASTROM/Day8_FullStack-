import java.util.*;
class Geomentry{
    static double radius;
    static double length;
    static double breath;
    Geomentry(Scanner s){
        radius = s.nextDouble();
        length = s.nextDouble();
        breath = s.nextDouble();
    }
    void areaofcircle() {
        System.out.println( ("The value is "+3.14 * radius * radius));
    }
    void areaofrectangale(){
        System.out.println("The area of rectangle "+length*breath);
    }
}
class geo {
    public static void main(String[] args) {
        Scanner s=new Scanner(System.in);
        Geomentry g=new Geomentry(s);
        g.areaofcircle();
        g.areaofrectangale();
    }
}
