-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-20/problem


SET @row_num = 0;
SELECT COUNT(*) FROM station INTO @total;

SELECT ROUND(AVG(tbl.lat_n), 4)
FROM (SELECT @row_num := @row_num + 1 AS row_id, lat_n
      FROM station
      ORDER BY lat_n) AS tbl
WHERE CASE
          WHEN MOD(@total, 2) = 0 
               THEN tbl.row_id IN (@total/2, @total/2 + 1)
               ELSE tbl.row_id = (@total + 1)/2
      END;
      
      
      
