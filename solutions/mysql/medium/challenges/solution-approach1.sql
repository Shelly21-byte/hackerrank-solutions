-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
-- Problem     Challenges
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-07, 09:13 p.m.
-- ──────────────────────────────────────────────────

WITH counts AS (
    SELECT hacker_id, COUNT(*) AS total
    FROM Challenges
    GROUP BY hacker_id
),
max_count AS (
    SELECT MAX(total) AS max_total FROM counts
),
freq AS (
    SELECT total, COUNT(*) AS freq
    FROM counts
    GROUP BY total
)
SELECT 
    H.hacker_id,
    H.name,
    C.total
FROM Hackers H
JOIN counts C ON H.hacker_id = C.hacker_id
JOIN freq F ON C.total = F.total
CROSS JOIN max_count M
WHERE F.freq = 1 OR C.total = M.max_total
ORDER BY C.total DESC, H.hacker_id ASC;
