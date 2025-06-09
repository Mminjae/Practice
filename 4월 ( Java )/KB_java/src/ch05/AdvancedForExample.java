package ch05;

public class AdvancedForExample {
    public static void main(String[] args){

        int[] scores = {95,71,84,93,87};
        int sum = 0;
        double avg = 0;

        for(int n:scores) {
            sum += n;
        }

        avg = (double)sum / 5;

        System.out.println("점수 총합: " + sum);
        System.out.println("점수 평균: " + avg);

    }
}
