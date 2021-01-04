-- # Problem: https://www.hackerrank.com/challenges/symmetric-pairs/problem


SELECT f1.x, f1.y
FROM functions f1
JOIN functions f2 ON f1.x = f2.y AND f2.x = f1.y 
GROUP BY f1.x, f1.y
# after we found the symmetric paris, we could get a list, but we need to prevent duplication in this list
# therefore, we need to consider two situations,
# one: f1.x = f1.y ---- we use COUNT(f1.x) > 1 to prevent duplication
# other: f1.x <> f1.y --- we only pulled out the pairs that satisty f1.x < f1.y 
#                         while we verified (20, 21) and (21, 20) are symmetric pairs
HAVING COUNT(f1.x) > 1 OR f1.x < f1.y
ORDER BY f1.x;



