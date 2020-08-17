-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-7/problem

-- # Method 1:
SELECT DISTINCT CITY
FROM STATION
WHERE RIGHT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u');


-- # Method 2:
SELECT DISTINCT CITY
FROM STATION 
WHERE CITY RLIKE '.*[aeiou]$';
