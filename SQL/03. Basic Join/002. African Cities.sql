-- # Problem: https://www.hackerrank.com/challenges/african-cities/problem

SELECT CI.NAME
FROM CITY CI
JOIN COUNTRY CO
ON CI.COUNTRYCODE = CO.CODE
WHERE CONTINENT = 'Africa';

