package ch04.sec04;

public class MultiplicationTableExample {
    public static void main(String[] args) {

        for (int dan =2;dan<10;dan++){
            System.out.println("*** " + dan + "단" + " ***");
            for (int num = 1; num < 10; num++){
                System.out.println(dan + " x " + num + " = " + num*dan);
            }
            System.out.println();
        }
    }
}
