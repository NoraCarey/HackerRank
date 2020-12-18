-- # Problem: https://www.hackerrank.com/challenges/binary-search-tree-1/problem

SELECT n, CASE 
              WHEN p IS NULL THEN 'Root'
              WHEN n IN (SELECT DISTINCT p FROM BST) THEN 'Inner'
              ELSE 'Leaf'
          END
FROM BST
ORDER BY n


