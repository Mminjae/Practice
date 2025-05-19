SELECT * FROM employees.employees;

-- 문제 3p. 1번
SELECT * FROM titles;

-- 문제 3p. 2번
SELECT first_name FROM employees;

-- 문제 3p. 3번
SELECT first_name,last_name,gender FROM employees;

-- 문제 4p. 1번
SELECT first_name AS '이름', gender AS '성별', hire_date AS '회사 입사일' FROM employees;