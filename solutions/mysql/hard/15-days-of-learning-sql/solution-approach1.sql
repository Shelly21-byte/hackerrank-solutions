-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem?isFullScreen=true
-- Problem     15 Days of Learning SQL
-- Difficulty  Hard
-- Subdomain   Advanced Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-06, 06:35 p.m.
-- ──────────────────────────────────────────────────

SELECT
    s.submission_date,
    (
        SELECT COUNT(*) FROM (
            SELECT hacker_id
            FROM Submissions
            WHERE submission_date <= s.submission_date
            GROUP BY hacker_id
            HAVING COUNT(DISTINCT submission_date) = DATEDIFF(s.submission_date, '2016-03-01') + 1
        ) AS t
    ) AS total_unique_hackers,
    (
        SELECT hacker_id
        FROM Submissions
        WHERE submission_date = s.submission_date
        GROUP BY hacker_id
        ORDER BY COUNT(*) DESC, hacker_id ASC
        LIMIT 1
    ) AS top_hacker_id,
    (
        SELECT h.name
        FROM Hackers h
        WHERE h.hacker_id = (
            SELECT hacker_id
            FROM Submissions
            WHERE submission_date = s.submission_date
            GROUP BY hacker_id
            ORDER BY COUNT(*) DESC, hacker_id ASC
            LIMIT 1
        )
    ) AS name
FROM (
    SELECT DISTINCT submission_date
    FROM Submissions
    ORDER BY submission_date
) AS s
ORDER BY s.submission_date;
