-- 2~3페이지 기본세팅
USE sqldb;

CREATE TABLE stdtbl ( 
stdName VARCHAR(10) NOT NULL PRIMARY KEY, 
addr CHAR(4) NOT NULL
);

CREATE TABLE clubtbl ( 
clubName VARCHAR(10) NOT NULL PRIMARY KEY,
roomNo CHAR(4) NOT NULL
);

CREATE TABLE stdclubtbl( 
num int AUTO_INCREMENT NOT NULL PRIMARY KEY, 
stdName VARCHAR(10) NOT NULL,
clubName VARCHAR(10) NOT NULL,
FOREIGN KEY(stdName) REFERENCES stdtbl(stdName),
FOREIGN KEY(clubName) REFERENCES clubtbl(clubName)
);


INSERT INTO stdtbl VALUES ('김범수','경남'), ('성시경','서울'), ('조용필','경기'), ('은지원','경북'),('바비킴','서울');
INSERT INTO clubtbl VALUES ('수영','101호'), ('바둑','102호'), ('축구','103호'), ('봉사','104호');
INSERT INTO stdclubtbl 
VALUES (NULL, '김범수','바둑'), (NULL,'김범수','축구'), (NULL,'조용필','축구'), 
(NULL,'은지원','축구'), (NULL,'은지원','봉사'), (NULL,'바비킴','봉사');

-- 4페이지 1번
SELECT S.stdName, S.addr, SC.clubName, C.roomNo
FROM stdtbl S
INNER JOIN stdclubtbl SC
ON S.stdName = SC.stdName
INNER JOIN clubtbl C 
ON SC.clubName = C.clubName
ORDER BY S.stdName;

-- 4페이지 2번
SELECT C.clubName,C.roomNo,S.stdName,S.addr
FROM stdtbl S
INNER JOIN stdclubtbl SC
ON SC.stdName = S.stdName
INNER JOIN Clubtbl C
ON SC.clubName = C.clubName
ORDER BY C.clubName;

-- 5페이지 기본세팅
USE sqldb;
CREATE TABLE empTbl(emp CHAR(3), manager CHAR(3), empTel VARCHAR(8));
INSERT INTO empTbl VALUES('나사장', NULL, '0000');
INSERT INTO empTbl VALUES('김재무', '나사장', '2222');
INSERT INTO empTbl VALUES('김부장', '김재무', '2222-1');
INSERT INTO empTbl VALUES('이부장', '김재무', '2222-2');
INSERT INTO empTbl VALUES('우대리', '이부장', '2222-2-1');
INSERT INTO empTbl VALUES('지사원', '이부장', '2222-2-2');
INSERT INTO empTbl VALUES('이영업', '나사장', '1111');
INSERT INTO empTbl VALUES('한과장', '이영업', '1111-1');
INSERT INTO empTbl VALUES('최정보', '나사장', '3333');
INSERT INTO empTbl VALUES('윤차장', '최정보', '3333-1');
INSERT INTO empTbl VALUES('이주임', '윤차장', '3333-1-1');

-- 6페이지
SELECT A.emp AS '부하직원', A.manager AS '직속상관', A.empTel AS '직속상관연락처'
FROM empTbl A 
INNER JOIN empTbl B
ON A.manager = B.emp
WHERE A.emp = '우대리';



-- 9페이지 1번
select e.emp_no, e.first_name, e.last_name, title 
from titles t
INNER JOIN employees e 
ON t.emp_no = e.emp_no
where t.to_date = '9999-01-01';

-- 10페이지 1번
SELECT e.*, t.title, s.salary
FROM current_titles titles
INNER JOIN employees e
ON t.emp_no = e.emp_no
INNER JOIN current_salaries s
ON t.emp_no = s.emp_no
WHERE t.to_date = '9999-01-01'
AND s.to_date = '9999-01-01';

-- 11페이지 1번
SELECT D.dept_no,d.dept_name,count(*)
from departments d
INNER JOIN dept_emp de
ON d.dept_no = de.dept_no
INNER JOIN employees e
ON de.emp_no = e.emp_no
WHERE de.to_date = '9999-01-01'
group by d.dept_no
order by d.dept_no;

-- 13페이지 1번 
select e.emp_no, e.first_name, e.last_name, d.dept_name, de.from_date, de.to_date
from departments d
inner join dept_emp de
on d.dept_no = de.dept_no
inner join employees e
on de.emp_no = e.emp_no
where e.emp_no = 10209 
order by e.emp_no, de.from_date;



