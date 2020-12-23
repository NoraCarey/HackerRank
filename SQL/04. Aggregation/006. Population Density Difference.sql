-- # Problem: https://www.hackerrank.com/challenges/population-density-difference/problem


SELECT (MAX(population) - Min(population)) AS population_diff
FROM city;


