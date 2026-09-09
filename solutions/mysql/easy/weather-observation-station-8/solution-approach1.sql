-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
-- Problem     Weather Observation Station 8
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-09, 09:33 p.m.
-- ──────────────────────────────────────────────────

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY, 1) IN ('a','e','i','o','u','A','E','I','O','U')
AND RIGHT(CITY, 1) IN ('a','e','i','o','u','A','E','I','O','U');
