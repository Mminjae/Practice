package ch04.hard;

import java.util.Scanner;

public class Ex5 {
    public static void main(String args[]){
        Scanner scanner = new Scanner(System.in);
        int sum = 0;

        while(true){
            System.out.println("""
                    \n-----------------------------------
                    1. 예금 | 2. 출금 | 3. 잔고 | 4. 종료
                    -----------------------------------
                    """);

            System.out.print("선택> ");
            int num = scanner.nextInt();

            switch (num) {
                case 1:
                    System.out.print("예금액> ");
                    int input = scanner.nextInt();
                    sum += input;
                    break;
                case 2:
                    int output = scanner.nextInt();
                    sum -= output;
                    break;
                case 3:
                    System.out.print("잔고: " + sum);
                    break;
                case 4:
                    System.out.println("프로그램 종료");
                    return;
            }
        }
    }
}
