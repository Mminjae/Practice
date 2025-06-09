package ch05.hard;

public class Ex2 {
    public static void main(String[] args) {
        int [] array = {1,5,3,8,2};
        int max = 0;

        for(int i = 0; i < array.length; i++){
            for(int j = 0; j < array.length; j++){
                if(array[i] > array[j]){
                    max = array[i];
                } else if (array[i] < array[j]) {
                    max = array[j];
                }
            }
        }
        System.out.println("최대값은: " + max);
    }
}

