-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
-- Problem     Weather Observation Station 20
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-07, 09:04 p.m.
-- ──────────────────────────────────────────────────

SET @r = 0;
SELECT ROUND(AVG(LAT_N), 4) AS median
FROM (
    SELECT @r:=@r+1 AS r, LAT_N
    FROM STATION
    ORDER BY LAT_N
) AS temp
WHERE r = (SELECT CEIL(COUNT(*) / 2) FROM STATION)
   OR r = (SELECT FLOOR((COUNT(*) + 1) / 2) FROM STATION);
