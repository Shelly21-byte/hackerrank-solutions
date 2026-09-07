-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/sql-projects/problem?isFullScreen=true
-- Problem     SQL Project Planning
-- Difficulty  Medium
-- Subdomain   Advanced Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-07, 09:18 p.m.
-- ──────────────────────────────────────────────────

SELECT Start_Date, MIN(End_Date) AS End_Date
FROM (
    SELECT P.Start_Date, MIN(C.End_Date) AS End_Date
    FROM (SELECT Start_Date FROM Projects WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) P,
         (SELECT End_Date FROM Projects WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)) C
    WHERE P.Start_Date < C.End_Date
    GROUP BY P.Start_Date
) AS temp
GROUP BY Start_Date
ORDER BY DATEDIFF(End_Date, Start_Date), Start_Date;
