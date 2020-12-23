-- # Problem: https://www.hackerrank.com/challenges/earnings-of-employees/problem


# Method 1:

SELECT (months * salary) AS total_earning, COUNT(*)
FROM employee
GROUP BY total_earning
ORDER BY total_earning DESC
LIMIT 1;


# Method 2:

SELECT MAX(months * salary), COUNT(*)
FROM employee
WHERE (months * salary) = (SELECT MAX(months * salary)
                           FROM employee);
                           
                           
                           
