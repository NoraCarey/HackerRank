-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-11/problem

-- # METHOD 1
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u') 
OR RIGHT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u');


-- # METHOD 2
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[aeiou].*' OR CITY NOT REGEXP '.*[aeiou]$';

-- # METHOD 3
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT RLIKE '^[aeiou].*' OR CITY NOT RLIKE '.*[aeiou]$';


