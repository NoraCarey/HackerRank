-- # PROBLEM: https://www.hackerrank.com/challenges/weather-observation-station-12/problem

-- # METHOD 1:
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u') AND RIGHT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u');


-- # METHOD 2
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT RLIKE '^[aeiou].*' AND CITY NOT RLIKE '.*[aeiou]$';

-- # METHOD 3
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[aeiou].*' AND CITY NOT REGEXP '.*[aeiou]$';

