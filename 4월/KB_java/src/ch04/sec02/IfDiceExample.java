package ch04.sec02;

public class IfDiceExample {
    public static void main(String[] args) {
        int num = (int) (Math.random() * 6);

        if(num == 1){
            System.out.println(num + "번이 나왔습니다.");
        }
        if(num == 2){
            System.out.println(num + "번이 나왔습니다.");
        }
        if(num == 3){
            System.out.println(num + "번이 나왔습니다.");
        }
        if(num == 4){
            System.out.println(num + "번이 나왔습니다.");
        }
        if(num == 5){
            System.out.println(num + "번이 나왔습니다.");
        }
        if(num == 6){
            System.out.println(num + "번이 나왔습니다.");
        }
    }
}
