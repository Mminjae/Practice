package ch07.sec03.exam02;

import test.Chapter7.sec02.SmartPhone;

public class SmartPhoneExample {
    public static void main(String[] args) {

        SmartPhone sp = new SmartPhone("갤럭시","검정");

        System.out.println("모델: " + sp.model);
        System.out.println("색상: " + sp.color);
    }
}
