package ch04.sec02;

public class IfElseExample {
    public static void main(String [] args) {
        int score = 85;

        if (90 <= score && score <= 100 ) {
            System.out.println("등급은 A입니다.");
        }
        else if(80 <= score && score < 90) {
            System.out.println("등급은 B입니다.");
        }
    }
}
