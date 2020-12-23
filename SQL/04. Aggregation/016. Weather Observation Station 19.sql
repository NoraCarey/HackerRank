-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-19/problem


SELECT ROUND(SQRT(POWER((MIN(lat_n) - MAX(lat_n)), 2) + (POWER((MIN(long_w) - Max(long_w)), 2))), 4)
FROM station;


