package org.scoula.jdbc_ex.test;

// ✅ JUnit 테스트 관련 라이브러리 import
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

// ✅ JDBC에서 사용하는 클래스들 import
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbTest {

    @Test // ➤ 이 메서드가 테스트 메서드임을 나타냄
    @DisplayName("jdbc_ex 데이터베이스에 접속한다.") // ➤ 테스트 이름을 지정 (테스트 결과 화면에 출력됨)
    public void testConnection() throws SQLException, ClassNotFoundException {
        // ✅ JDBC 드라이버 로딩
        Class.forName("com.mysql.cj.jdbc.Driver");

        // ✅ 접속할 DB의 URL 지정 (MySQL, localhost, 포트 3306, DB명: jdbc_ex)
        String url = "jdbc:mysql://127.0.0.1:3306/jdbc_ex";

        // ✅ DB 로그인 ID 및 비밀번호
        String id = "scoula";
        String password = "1234";

        // ✅ DB 연결 시도 (DriverManager를 통해 Connection 객체 생성)
        Connection conn = DriverManager.getConnection(url, id, password);

        // ✅ 연결 성공 시 메시지 출력
        System.out.println("DB 연결 성공");

        // ✅ 연결 종료
        conn.close();
    }
}
