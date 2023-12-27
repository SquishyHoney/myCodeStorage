public class App {

    static void Testing(){
        System.out.println("This is from App function");
    }

    public static void main(String[] args) throws Exception {
        
        System.out.println("This is from the main function");
        Main obj = new Main();
        System.out.println(obj.x);
        Testing();

    }
}
