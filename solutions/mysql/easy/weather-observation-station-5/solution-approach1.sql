-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
-- Problem     Weather Observation Station 5
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-05, 05:19 p.m.
-- ──────────────────────────────────────────────────

SELECT CITY, LENGTH(CITY) FROM STATION 
ORDER BY LENGTH(CITY) ASC, CITY ASC LIMIT 1;

SELECT CITY, LENGTH(CITY) FROM STATION 
ORDER BY LENGTH(CITY) DESC, CITY ASC LIMIT 1;
