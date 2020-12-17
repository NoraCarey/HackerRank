-- # Problem: https://www.hackerrank.com/challenges/the-pads/problem
Method 1:
SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')')
FROM OCCUPATIONS
ORDER BY Name ASC;

Method 2: 
SELECT CASE
           WHEN occupation = 'actor' THEN CONCAT(name, '(A)')
           WHEN occupation = 'professor' THEN CONCAT(name, '(P)')
           WHEN occupation = 'singer' THEN CONCAT(name, '(S)')
           WHEN occupation = 'doctor' THEN CONCAT(name, '(D)')
        END 
FROM occupations
ORDER BY name;

SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC, Occupation ASC


