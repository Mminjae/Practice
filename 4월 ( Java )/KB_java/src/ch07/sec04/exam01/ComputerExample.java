package ch07.sec04.exam01;

public class ComputerExample {
    public static void main(String[] args) {
        int n = 10;

        Calculator calculator = new Calculator();
        System.out.println("Calculator에서의 원 면적: " + calculator.areaCircle(n));

        Computer computer = new Computer();
        System.out.println("Computer에서의 원 면적: " + computer.areaCircle(n));
    }
}
