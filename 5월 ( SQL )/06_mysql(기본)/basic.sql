USE  sqldb;

CREATE TABLE tbl1 (
	a INT primary KEY,
    b INT,
    c INT
);

SHOW INDEX FROM tbl1;

CREATE TABLE tbl2 (
	a INT primary key,
    b INT UNIQUE,
    c INT unique,
    d int
);

SHOW INDEX FROM tbl2;

CREATE TABLE tbl3(
	a INT unique,
    b INT unique,
    c INT unique,
    d INT
);

show INDEX FROM tbl3;

CREATE TABLE tbl4 (
	a INT unique NOT NULL,
    b INT unique,
    c INT unique,
    d int
);

show INDEX FROM tbl4;

CREATE TABLE tbl5 (
	a INT UNIQUE NOT NULL,
    b INT UNIQUE,
    c INT unique,
    d INT primary key
);

SHOW INDEX FROM tbl5;

CREATE DATABASE IF NOT exists testdb;

USE testdb;

DROP TABLE IF EXISTS usertbl;

CREATE TABLE usertbl(
	userID char(8) NOT NULL PRIMARY KEY,
    name varbinary(10) NOT NUll,
    birthYear INT NOT NULL,
    addr NCHAR(2) NOT NULL
);

INSERT INTO usertbl VALUES('LSG', '이승기', 1987, '서울');
INSERT INTO usertbl VALUES('KBS', '김범수', 1979, '경남');
INSERT INTO usertbl VALUES('KKH', '김경호', 1971, '전남');
INSERT INTO usertbl VALUES('JYP', '조용필', 1950, '경기');
INSERT INTO usertbl VALUES('S나', '성시경', 1979, '서울');
SELECT * FROM usertbl;

ALTER TABLE userTBL DROP primary key;
ALTER TABLE usertbl
	ADD CONSTRAINT pk_name primary key(name);
    
select * FROM usertbl;