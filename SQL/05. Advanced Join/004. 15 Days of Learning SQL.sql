-- # Problem: https://www.hackerrank.com/challenges/interviews/problem


SELECT con.contest_id, con.hacker_id, con.name,
       SUM(total_submissions), SUM(total_accepted_submissions),
       SUM(total_views), SUM(total_unique_views)
FROM contests con
JOIN colleges col
ON con.contest_id = col.contest_id
JOIN challenges cha
ON col.college_id = cha.college_id
LEFT JOIN (SELECT challenge_id, SUM(total_views) AS total_views,
                  SUM(total_unique_views) AS total_unique_views
           FROM view_stats 
           GROUP BY challenge_id) AS v
ON v.challenge_id = cha.challenge_id
LEFT JOIN (SELECT challenge_id, 
                  SUM(total_submissions) AS total_submissions,
                  SUM(total_accepted_submissions) 
                  AS total_accepted_submissions
           FROM submission_stats
           GROUP BY challenge_id) AS s
ON s.challenge_id = cha.challenge_id
GROUP BY con.contest_id, con.hacker_id, con.name
HAVING SUM(total_views) != 0 AND SUM(total_unique_views) != 0
       AND SUM(total_submissions) != 0 AND
       SUM(total_accepted_submissions) != 0
ORDER BY con.contest_id;


