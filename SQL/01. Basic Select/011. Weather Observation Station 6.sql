-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-6/problem


SELECT DISTINCT CITY
FROM STATION 
WHERE LEFT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u');
