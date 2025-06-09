package ch04.sec05;

public class SumFrom1To100Example {
    public static void main(String[] args) {
        int i = 1;
        int sum = 0;

        while (true) {
            sum += i++;
            if (i == 101) {
                break;
            }
        }
        System.out.println("1~100 합: "+ sum);
    }
}
