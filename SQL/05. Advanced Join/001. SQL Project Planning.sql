-- # Problem: https://www.hackerrank.com/challenges/sql-projects/problem


SELECT a.start_date, MIN(b.end_date)
# select date from two tables, one start date table, other end date table

      # select start dates that are not end dates, if a start date is an end date,
      # they are belongs to the same project
FROM (SELECT start_date 
      FROM projects
      WHERE start_date NOT IN (SELECT end_date
                               FROM projects)) AS a,
      # select end dates that are not start dates of other projects                        
      (SELECT end_date
       FROM projects
       WHERE end_date NOT IN (SELECT start_date
                              FROM projects)) AS b

# make sure that we only choose the end dates that fall after the start date in this round
# using MIN(end_date) to make sure we choose the closest end date of start date for the project
                              
WHERE a.start_date < b.end_date
GROUP BY a.start_date
ORDER BY DATEDIFF(a.start_date, MIN(b.end_date)) DESC, a.start_date;


