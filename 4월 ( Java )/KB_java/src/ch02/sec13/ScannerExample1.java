package ch02.sec13;

import java.util.Scanner;

public class ScannerExample1 {
    public static void main(String args []) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("x값 입력: " );
        int x = scanner.nextInt();

        System.out.print("y값 입력: ");
        int y = scanner.nextInt();

        int result = x + y;
        System.out.println("x+y: "+ result);
    }

}
