-- # Problem: https://www.hackerrank.com/challenges/contest-leaderboard/problem

SELECT h.hacker_id, h.name, SUM(tbl.max_scores) AS total_score
FROM (SELECT hacker_id, challenge_id, max(score) AS max_scores
      FROM submissions
      GROUP BY hacker_id, challenge_id
      ORDER BY hacker_id, challenge_id) AS tbl
JOIN hackers h
ON tbl.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING total_score > 0
ORDER BY total_score DESC, h.hacker_id;


