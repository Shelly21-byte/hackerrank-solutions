-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true
-- Problem     Binary Tree Nodes
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-05, 06:24 p.m.
-- ──────────────────────────────────────────────────

SELECT N,
CASE 
    WHEN P IS NULL THEN 'Root'
    WHEN N IN (SELECT P FROM BST) THEN 'Inner'
    ELSE 'Leaf'
END
FROM BST
ORDER BY N;
