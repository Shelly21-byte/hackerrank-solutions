-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
-- Problem     Weather Observation Station 4
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-06, 06:24 p.m.
-- ──────────────────────────────────────────────────

SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;
