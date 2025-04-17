package ch02.sec01;

public class VariableExchangeExample {
    public static void main (String[] args) {
        int x = 3;
        int y = 5;
        int temp = x;

        System.out.println("x:" + x + " y:" + y);
        x = y;
        y = temp;
        temp = x;

        System.out.println("x:" + x + " y:" + y);
    }
}
