-- # Problem: https://www.hackerrank.com/challenges/full-score/problem


SELECT h.hacker_id, h.name
FROM hackers h
JOIN submissions s
ON h.hacker_id = s.hacker_id
JOIN challenges c
ON c.challenge_id = s.challenge_id
JOIN difficulty d
ON d.difficulty_level = c.difficulty_level
WHERE s.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(DISTINCT c.challenge_id) > 1
ORDER BY COUNT(DISTINCT c.challenge_id) DESC, h.hacker_id;


