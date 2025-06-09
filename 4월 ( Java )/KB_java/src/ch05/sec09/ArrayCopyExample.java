package ch05.sec09;

import java.util.*;

public class ArrayCopyExample {
    public static void main(String[] args){
        String[] oldStrArray = {"java","array","copy"};

        String[] newstrArray = new String[5];

        System.arraycopy(oldStrArray, 0,newstrArray,0,3);

        for (String n: newstrArray) {
            System.out.print(n + ", ");
        }
    }
}
