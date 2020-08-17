-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-6/problem

-- # Method 1:
SELECT DISTINCT CITY
FROM STATION 
WHERE LEFT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u');


-- # Method 2:
SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE '^[aeiou].*';
