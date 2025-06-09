package ch07.sec07.exam02;

public class ChildExample {
    public static void main(String[] args) {
        Child child = new Child();
        Parent parent = child;

        parent.method1();
        parent.method2();
//        parent.method3();   parent는 Parent 타입의 변수이기 때문에  Parent 클래스에 정의된 메서드까지만 호출 가능함
//                            method3()는 Child 클래스에만 정의되어 있고, Parent 클래스에는 없기 때문에
    }
}
