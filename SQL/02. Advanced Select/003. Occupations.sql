-- # Problem: https://www.hackerrank.com/challenges/occupations/problem

SELECT Min(CASE WHEN tbl.occupation = 'Doctor' THEN tbl.name ELSE NULL END) AS 'Doctor',
       Min(CASE WHEN tbl.occupation = 'Professor' THEN tbl.name ELSE NULL END) AS 'Professor',
       Min(CASE WHEN tbl.occupation = 'Singer' THEN tbl.name ELSE NULL END) AS 'Singer',
       Min(CASE WHEN tbl.occupation = 'Actor' THEN tbl.name ELSE NULL END) AS 'Actor'
       -- using Min() or Max() is the same here
FROM (SELECT occupation, name, RANK() OVER(PARTITION BY occupation ORDER BY name) AS ranking
      FROM occupations) AS tbl
GROUP BY tbl.ranking;


