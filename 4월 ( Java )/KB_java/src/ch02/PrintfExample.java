package ch02;

public class PrintfExample {
    public static void main(String[] args) {
        int value = 123;

        // printf 사용으로 수정
        System.out.printf("상품의 가격: %d원\n", value);
        System.out.printf("상품의 가격: %6d원\n", value);   // 6자리 오른쪽 정렬
        System.out.printf("상품의 가격: %-6d원\n", value);  // 6자리 왼쪽 정렬
        System.out.printf("상품의 가격: %06d원\n", value);  // 6자리 0으로 채움

        double area = 3.14159 * 10 * 10;
        System.out.printf("반지름이 %d인 원의 넓이: %.2f\n", 10, area);  // 소수점 2자리까지 출력

        String name = "홍길동";
        String job = "도적";
        System.out.printf("%6d | %-10s | %10s\n", 1, name, job);
    }
}
