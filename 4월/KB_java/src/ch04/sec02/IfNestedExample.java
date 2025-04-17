package ch04.sec02;

public class IfNestedExample {
    public static void main(String[] args) {
        int score = 94;
        System.out.println("점수: " + score);

        if (90<=score && score <= 100){
            if (95<= score && score <= 100) {
                System.out.println("학점: A+");
            }
            System.out.println("학점: A");
        } else if (80 < score && score <90) {
            if (85<=score && score < 90) {
                System.out.println("학점: B+");
            }
            System.out.println("학점 : B");
        }
    }
}
