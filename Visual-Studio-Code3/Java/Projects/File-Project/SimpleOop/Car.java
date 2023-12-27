public class Car{
    String make = "Chevrolet";
    String model = "Corvette";
    int year = 2020;
    String color = "Blue";
    double price = 50.10;

    void drive(){
        System.out.printf("You are driving %s car\n",this.make);
    }

    void brake(){
        System.out.println("You press the brake");
    }

}
