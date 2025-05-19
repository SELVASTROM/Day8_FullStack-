import java.util.*;
class Myrect{
    int length;
    int breath;
    Myrect(){
        this.length=45;
        this.breath=78;
    }
    Myrect(int length,int breath){
        this.length=length;
        this.breath=breath;
    }
    void display(){
        System.out.println("area of rectangale "+(length*breath));
    }void display1(){
        System.out.println("the perimeter of rectangale "+(2*(length+breath)));
    }
}
class rect {
    public static void main(String[] args) {
        Scanner s=new Scanner(System.in);
        Myrect m1=new Myrect();
        m1.display();
        System.out.println("enter the length");
        int length=s.nextInt();
        System.out.println("enter the breath");
        int breath=s.nextInt();
        Myrect m2=new Myrect(length,breath);
        m2.display1();
        s.close();
    }
    
}
