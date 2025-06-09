USE sqldb;

-- 2페이지 1번
SELECT *
FROM buytbl b 
	INNER JOIN usertbl u
	ON b.userID = u.userID;

-- 2페이지 2번
SELECT *
FROM buytbl b 
	INNER JOIN usertbl u
	ON b.userID = u.userID
WHERE b.userID = 'JYP'; 

-- 3페이지 1번
SELECT u.userID, u.name, b.prodName, u.addr,
		CONCAT(u.mobile1, u.mobile2) as '연락처'
FROM usertbl u
	LEFT OUTER JOIN buytbl b
	ON u.userID = b.userID
ORDER BY u.userID;


-- 4페이지 1번
SELECT name, CONCAT(mobile1, mobile2) AS '전화번호'
FROM usertbl
WHERE name 
NOT IN(SELECT name 
		FROM usertbl 
		WHERE mobile1 IS NULL);

-- 4페이지 2번
SELECT name, CONCAT(mobile1, mobile2) AS '전화번호'
FROM usertbl
WHERE name 
	IN(SELECT name 
		FROM usertbl 
		WHERE mobile1 IS NULL);