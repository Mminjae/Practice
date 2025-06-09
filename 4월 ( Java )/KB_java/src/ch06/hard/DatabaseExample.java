package ch06.hard;

public class DatabaseExample {
    public static void main(String[] args) {

        Database database = Database.getInstance();


        System.out.println("데이터베이스: " + database.connect());
        database.close();
    }
}
