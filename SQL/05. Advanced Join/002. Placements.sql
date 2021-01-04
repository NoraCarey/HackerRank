-- # Problem: https://www.hackerrank.com/challenges/placements/problem


# Method 1:
SELECT a.name
FROM (SELECT s.id, s.name, p.salary, f.friend_id
      FROM students s, friends f, packages p
      WHERE s.id = f.id AND s.id = p.id) AS a,
      packages p
WHERE p.id = a.friend_id AND a.salary < p.salary
ORDER BY p.salary;


# Method 2:

# when we need to join a table twice, 
# we could set different alias names for the same table to distinguish them

SELECT s.name
FROM students s 
JOIN packages p ON s.id = p.id
JOIN friends f ON s.id = f.id
JOIN packages pf ON f.friend_id = pf.id
WHERE p.salary < pf.salary
ORDER BY pf.salary;


