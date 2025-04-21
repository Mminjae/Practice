package ch06.sec08.exam01;

public class Calculator {
    int x;
    int y;

    static void powerOn(){
        System.out.println("전원을 켭니다.");
    }

    static int plus(int x, int y){
        int result = x + y;
        return result;
    }

    static double divide(int x, int y){
        double result2 =(double) x / y;
        return result2;
    }

    static void powerOff(){
        System.out.println("전원을 끕니다.");
    }
}
