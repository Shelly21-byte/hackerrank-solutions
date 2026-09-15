-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
-- Problem     Higher Than 75 Marks
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-15, 11:13 p.m.
-- ──────────────────────────────────────────────────

SELECT Name 
FROM STUDENTS 
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID;
