-- 다음과 같이 데이터베이스를 준비하세요.
create DATABASE jdbc_ex;
CREATE USER 'scoula'@'%' identified BY '1234';
GRANT ALL privileges ON jdbc_ex.*TO 'scoula'@'%';
flush privileges;

use jdbc_ex;

-- Intellij에서 다음과 같은 users 테이블을 정의하세요.
CREATE TABLE USERS (
ID VARCHAR(12) NOT NULL PRIMARY KEY,
PASSWORD VARCHAR(12) NOT NULL,
NAME VARCHAR(30) NOT NULL,
ROLE VARCHAR(6) NOT NULL
);

-- 다음과 같은 테스트 데이터를 추가하세요.
INSERT INTO USERS(ID, PASSWORD, NAME, ROLE)
VALUES('guest', 'guest123', '방문자', 'USER');
INSERT INTO USERS(ID, PASSWORD, NAME, ROLE)
VALUES('admin', 'admin123', '관리자', 'ADMIN');
INSERT INTO USERS(ID, PASSWORD, NAME, ROLE)
VALUES('member', 'member123', '일반회원', 'USER');
SELECT * FROM USERS;