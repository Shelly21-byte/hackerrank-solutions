-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/print-prime-numbers/problem?isFullScreen=true
-- Problem     Print Prime Numbers
-- Difficulty  Medium
-- Subdomain   Alternative Queries
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-11-14, 10:11 p.m.
-- ──────────────────────────────────────────────────

SELECT GROUP_CONCAT(NUMB SEPARATOR '&')
FROM (
    SELECT @num := @num + 1 AS NUMB FROM
    INFORMATION_SCHEMA.TABLES p1,
    INFORMATION_SCHEMA.TABLES p2,
    (SELECT @num := 1) tmp
) tempNum
WHERE NUMB <= 1000 AND NOT EXISTS (
    SELECT * FROM (
        SELECT @nu := @nu + 1 AS NUMA FROM
        INFORMATION_SCHEMA.TABLES p1,
        INFORMATION_SCHEMA.TABLES p2,
        (SELECT @nu := 1) tmp1
    ) tempNum1
    WHERE FLOOR(NUMB / NUMA) = (NUMB / NUMA)
    AND NUMA < NUMB AND NUMA > 1
);
