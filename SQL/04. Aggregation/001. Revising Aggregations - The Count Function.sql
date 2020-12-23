-- # Problem: https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem

SELECT COUNT(DISTINCT id)
FROM city
WHERE population > 100000;



