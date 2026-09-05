-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
-- Problem     Revising the Select Query I
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-05, 05:19 p.m.
-- ──────────────────────────────────────────────────

SELECT*FROM CITY
WHERE POPULATION>100000
AND COUNTRYCODE='USA';
