-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true
-- Problem     Weather Observation Station 11
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-13, 08:47 p.m.
-- ──────────────────────────────────────────────────

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY, 1) NOT IN ('A','E','I','O','U','a','e','i','o','u')
   OR RIGHT(CITY, 1) NOT IN ('A','E','I','O','U','a','e','i','o','u');
