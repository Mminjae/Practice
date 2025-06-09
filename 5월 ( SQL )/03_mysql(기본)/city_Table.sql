SELECT * FROM world.city;

-- 11p. 1번
SELECT * FROM city
WHERE CountryCode = 'KOR'
order by Population DESC;

-- 11p. 2번
SELECT CountryCode, Population FROM city
order by CountryCode ASC, Population DESC;

-- 11p. 3번
SELECT COUNT(*) AS city_count FROM city
WHERE CountryCode = 'KOR';

-- 11p. 4번
SELECT * FROM city
WHERE CountryCode IN ('KOR','CHN','JPN');

-- 11p. 5번
SELECT * FROM city
WHERE Population >= 1000000 AND CountryCode = 'KOR';

-- 11p. 6번
SELECT * FROM city
WHERE CountryCode = 'KOR'
order by CountryCode ASC
limit 10;

-- 11p. 7번
SELECT * FROM city
WHERE CountryCode = 'KOR' AND ( Population >= 1000000 AND Population <= 5000000);