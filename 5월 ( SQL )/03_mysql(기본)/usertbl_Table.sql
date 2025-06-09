SELECT * FROM sqldb.usertbl;

-- p6. 1번
select * FROM usertbl
WHERE name = '김경호';

-- p6. 2번
select * FROM usertbl
WHERE birthYear >= 1970 AND height >= 182;

-- p7. 1번
select * FROM usertbl
WHERE height >= 180 AND height <= 183;

-- p7. 2번
select * FROM usertbl
where addr IN('경남','전남','경북');

-- p7. 3번
select * FROM usertbl
WHERE name Like '김%';

-- p8. 1번
SELECT name, height FROM usertbl
WHERE height>(SELECT height FROM usertbl WHERE name = '김경호');

-- p9. 1번
SELECT * FROM usertbl
ORDER BY mdate ASC;

-- p9. 2번
select * FROM usertbl
order by mdate  DESC;

-- p9 3번
select * FROM usertbl
order by height desc, name asc;

-- p10. 1번
SELECT distinct * FROM usertbl
ORDER BY addr asc;