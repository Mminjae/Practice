package ch04.sec05;

import java.util.Scanner;

public class KeyControlExample {
    public static void main(String[] args) {
        int speed = 0;

        while (true) {
            System.out.println("""
                    ---------------------------
                    1. 증속 | 2. 감속 | 3. 중지 |
                    ---------------------------
                    """);
            Scanner scanner = new Scanner(System.in);
            int menu = scanner.nextInt();

            if (menu == 1) {
                speed ++;
                System.out.println("선택: " + menu);
                System.out.println("현재 속도 = " + speed);
            } else if (menu == 2) {
                speed --;
                System.out.println("선택: " + menu);
                System.out.println("현재 속도 = " + speed);
            } else if (menu == 3) {
                System.out.println("프로그램 종료");
                break;
            }
        }
    }
}
