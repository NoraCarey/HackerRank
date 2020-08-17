-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-8/problem


-- # Method 1:
SELECT DISTINCT CITY
FROM STATION 
WHERE LEFT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u') AND RIGHT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u');


-- # Method 2:
SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE '^[aeiou].*[aeiou]$';


-- # Method 3:
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';
