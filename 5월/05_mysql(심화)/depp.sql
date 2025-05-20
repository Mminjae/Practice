-- 2페이지 1번
DROP TABLE IF EXISTS buyTBL, userTBL;

-- 2페이지 2번
CREATE TABLE userTBL (
    userID     CHAR(8) NOT NULL PRIMARY KEY,
    name       VARCHAR(10) NOT NULL,
    birthYear  INT NOT NULL
);

-- 2페이지 3번
CREATE TABLE buyTBL (
    num       INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    userID    CHAR(8) NOT NULL,
    prodName  CHAR(6) NOT NULL
);

-- 2페이지 4번
ALTER TABLE buyTBL
    ADD CONSTRAINT FK_userTBL_buyTBL
    FOREIGN KEY (userID)
    REFERENCES userTBL(userID);

-- 3페이지 1,2번
USE tableDB;
DROP TABLE IF EXISTS buyTBL, userTBL;
CREATE TABLE userTBL (
userID CHAR(8) NOT NULL PRIMARY KEY,
name VARCHAR(10) NOT NULL,
birthYear INT NOT NULL,
email CHAR(30) NULL UNIQUE
);

-- 4페이지 1,2번
DROP TABLE IF EXISTS userTBL;
CREATE TABLE userTBL(
	userID CHAR(8) PRIMARY KEY,
    name VARCHAR(10),
    birthYear INT CHECK (birthYear >= 1900 AND birthYear <= 2023),
    mobile1 char(3) NULL,
    constraint CK_name CHECK ( name IS NOT NULL)
);

-- 5페이지 1,2,3번
DROP TABLE IF EXISTS userTBL;

CREATE TABLE userTBL (
    userID    CHAR(8) NOT NULL PRIMARY KEY,
    name      VARCHAR(10) NOT NULL,
    birthYear INT NOT NULL DEFAULT -1,
    addr      CHAR(2) NOT NULL DEFAULT '서울',
    mobile1   CHAR(3) NULL,
    mobile2   CHAR(8) NULL,
    height    SMALLINT NULL DEFAULT 170,
    mDate     DATE NULL
);

INSERT INTO userTBL VALUES ('LHL', '이혜리', default, default, '011', '1234567', default, '2023.12.12');
INSERT INTO userTBL(userID, name) VALUES('KAY', '김아영');
INSERT INTO userTBL VALUES ('WB', '원빈', 1982, '대전', '019', '9876543', 176, '2020.5.5');

SELECT * FROM userTBL;

-- 6페이지 1번
ALTER TABLE usertbl
DROP COLUMN mobile;

-- 6페이지 2번
ALTER TABLE usertbl
change COLUMN name uName varchar(20) NULL;

-- 6페이지 3번
ALTER TABLE usertbl
DROP PRIMARY KEY;

-- 8페이지 1번
use employees;

-- 9페이지 1번
SELECT e.*,
t.title, t.from_date t_from, to_date t_to,
s.salary, s.from_date s_from, s.to_date s_to
FROM employees e
INNER JOIN titles tabledb
ON e.emp_no = t.emp_no
INNER JOIN titles t
ON e.emp_no = t.emp_no
INNER JOIN salaries s
ON e.emp_no = s.emp_no;

-- 10페이지 1번
SELECT * FROM employees
WHERE s_to = '9999-01-01';

-- 11페이지 1번
SELECT e.emp_no, d.dept_no, d.dept_name, de.from_date, de.to_date
FROM departments d
INNER JOIN dept_emp de
ON d.dept_no = de.dept_no
INNER JOIN emplotees e
ON de.emp_no = e.emp_no;

-- 12페이지 1번
SELECT * FROM EMP_DEPT_INFO
WHERE to_date = '9999-01-01';