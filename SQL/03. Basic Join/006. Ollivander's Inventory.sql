-- # Problem: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem


# Method 1: Correlated Subquery

SELECT w.id, p.age, w.coins_needed, w.power
FROM wands w
JOIN wands_property p
ON w.code = p.code
WHERE p.is_evil = 0 AND
      w.coins_needed = (SELECT min(w1.coins_needed)
                        FROM wands w1
                        JOIN wands_property p1
                        ON w1.code = p1.code
                        WHERE w1.power = w.power AND p1.age = p.age)
ORDER BY w.power DESC, p.age DESC;


# Method 2: Nested Subquery

SELECT w1.id, p1.age, w1.coins_needed, w1.power
FROM (SELECT p.age, min(w.coins_needed) AS coins, w.power
      FROM wands w
      JOIN wands_property p
      ON w.code = p.code
      WHERE is_evil = 0
      GROUP BY w.power, p.age) AS tbl
JOIN wands w1, wands_property p1 
WHERE w1.power = tbl.power AND p1.age = tbl.age AND 
      w1.code = p1.code AND w1.coins_needed = tbl.coins
ORDER BY w1.power DESC, p1.age DESC;


