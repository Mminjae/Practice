package ch02.sec13;

import java.util.Scanner;

public class ScannerExample2 {
    public static void main(String args []) {
        Scanner scanner = new Scanner(System.in);


        while (true) {
            System.out.print("입력 문자열: ");
            String str1 = scanner.nextLine();

            System.out.println("출력 문자열: " + str1);

            if (str1.equals("q")) {
                break;
            }
        }
        System.out.println("종료");
    }
}
