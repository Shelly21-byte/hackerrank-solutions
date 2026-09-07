-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true
-- Problem     Ollivander's Inventory
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-07, 09:11 p.m.
-- ──────────────────────────────────────────────────

SELECT id, age, coins_needed, power
FROM (
    SELECT 
        W.id,
        P.age,
        W.coins_needed,
        W.power,
        RANK() OVER(PARTITION BY P.age, W.power ORDER BY W.coins_needed) AS rnk
    FROM Wands W
    JOIN Wands_Property P ON W.code = P.code
    WHERE P.is_evil = 0
) t
WHERE rnk = 1
ORDER BY power DESC, age DESC;
