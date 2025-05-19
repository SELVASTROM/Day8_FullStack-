class Shape{
    final String action="Drawing";
    final void draw(){
        System.out.println(" I am "+action+" a line");
    }
}
class Circle extends Shape{
    // void draw(){
    //     System.out.println("i am drawing circle");
    // }
} 
class shape {
    public static void main(String[] args) {
        Shape s=new Shape();
        s.draw();
    }
}
