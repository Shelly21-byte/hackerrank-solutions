-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true
-- Problem     The Report
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-07, 09:07 p.m.
-- ──────────────────────────────────────────────────

SELECT IF(G.Grade < 8, NULL, S.Name), G.Grade, S.Marks
FROM Students S, Grades G
WHERE S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
ORDER BY G.Grade DESC, S.Name ASC, S.Marks ASC;
