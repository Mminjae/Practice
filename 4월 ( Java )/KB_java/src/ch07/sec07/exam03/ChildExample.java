package ch07.sec07.exam03;

public class ChildExample {
    public static void main(String[] args) {

        Parent parent = new Child();

        parent.field1 = "data 1";
        parent.method1();
        parent.method2();
//        parent.field2 = "data2";
//        parent.method3();            // Parent 타입의 변수이기 때문에 Parent 클래스에 정의된 필드와 메서드만을 사용가능하다.

        Child child = (Child) parent;

        child.field2 = "data2";
        child.method3();
    }
}
