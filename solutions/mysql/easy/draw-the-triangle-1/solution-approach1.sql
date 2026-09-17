-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true
-- Problem     Draw The Triangle 1
-- Difficulty  Easy
-- Subdomain   Alternative Queries
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-17, 10:50 p.m.
-- ──────────────────────────────────────────────────

WITH RECURSIVE Pattern AS (
    SELECT 20 AS n
    UNION ALL
    SELECT n - 1 FROM Pattern WHERE n > 1
)
SELECT REPEAT('* ', n) 
FROM Pattern;
