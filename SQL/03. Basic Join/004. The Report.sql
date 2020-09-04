-- # Problem: https://www.hackerrank.com/challenges/the-report/problem

-- # Method 1: 
SELECT CASE 
           WHEN g.Grade >= 8 THEN s.Name
           ELSE NULL
       END AS NAME, 
       g.Grade, s.Marks
FROM Students s
JOIN Grades g
ON s.Marks BETWEEN g.Min_Mark AND G.MAX_Mark
ORDER BY g.Grade DESC, s.Name ASC;


-- # Method 2:
SELECT IF(g.Grade >= 8, s.Name, 'NULL') AS student_name, g.Grade, s.Marks
FROM Students s
JOIN Grades g
ON s.Marks BETWEEN g.Min_Mark AND G.MAX_Mark
ORDER BY g.Grade DESC, s.Name ASC;


