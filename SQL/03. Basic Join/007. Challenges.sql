-- # Problem: https://www.hackerrank.com/challenges/challenges/problem

# In this question, we should choose the hacker who created the maximum total number of challenges and 
# the hackers who's total number of challenges only show once.

SELECT h.hacker_id, h.name, COUNT(DISTINCT c.challenge_id) AS challenge_nums
FROM hackers h
JOIN challenges c
ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
       # maximum total number of challenges created by hacker
HAVING challenge_nums = (SELECT COUNT(DISTINCT challenge_id) AS ct
                         FROM challenges
                         GROUP BY hacker_id
                         ORDER BY ct DESC
                         LIMIT 1) OR 
       # total number of challenges of each hacker that only show once
       challenge_nums IN (SELECT tbl.cnt
                           FROM (SELECT COUNT(DISTINCT challenge_id) AS cnt
                                 FROM challenges
                                 GROUP BY hacker_id) AS tbl
                           GROUP BY tbl.cnt
                           HAVING count(tbl.cnt) = 1)
ORDER BY challenge_nums DESC, h.hacker_id;

