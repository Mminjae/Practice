package ch05.sec06;

public class ArrayCreateByValueListExample1 {
    public static void main(String[] args) {

        String[] season = {"Spring","Summer","Fall","Winter"};

        int[] scores = {83,90, 87};

        for(int i =0; i < season.length; i++){
            System.out.println("season["+i+"]"+season[i]);
        }

        System.out.println();

        int sum = scores[0] + scores[1] + scores[2];
        double avg = (double)(scores[0] + scores[1] + scores[2]) / 3;

        System.out.println("총합 : " + sum);
        System.out.println("평균 : " + avg);


    }
}
