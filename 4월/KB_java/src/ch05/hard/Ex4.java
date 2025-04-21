package ch05.hard;

import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int person = 0;
        int sum = 0;
        double avg = 0;
        int max = 0;
        int[] student = new int[person];

        while (true){
            System.out.println("""
                    -------------------------------------------------
                    1. 학생수| 2. 점수입력| 3.점수리스트| 4. 분석| 5. 종료
                    -------------------------------------------------
                    """);
            System.out.print("선택: ");
            int num = scanner.nextInt();

            switch (num) {
                case 1:
                    System.out.print("학생수> ");
                    person = scanner.nextInt();
                    student = new int[person];
                    break;
                case 2:
                    for (int i =0; i < student.length; i++){
                        System.out.print("scores[" + i + "]> ");
                        student[i] = scanner.nextInt();
                    }
                    break;
                case 3:
                    for (int i = 0; i < student.length; i++){
                        System.out.println("scores[" + i + "]> " + student[i]);
                    }
                    break;
                case 4:
                    for (int n:student){
                        sum += n;
                        if(student[0] < n) {
                            max = n;
                        }
                    }
                    avg = (double)sum / student.length;
                    System.out.println("최고 점수: " + max);
                    System.out.println("평균 점수: " + avg);
                    break;
                case 5:
                    if (num == 5){
                        System.out.println("프로그램 종료");
                        return;
                    }
            }
        }
    }
}
