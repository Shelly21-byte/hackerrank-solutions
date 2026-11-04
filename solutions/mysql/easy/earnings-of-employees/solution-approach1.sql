-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
-- Problem     Top Earners
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-11-05, 12:37 a.m.
-- ──────────────────────────────────────────────────

SELECT MAX(months * salary), COUNT(*)
FROM Employee
WHERE months * salary = (SELECT MAX(months * salary) FROM Employee);
