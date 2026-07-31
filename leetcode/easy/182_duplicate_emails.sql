-- ============================================
-- LeetCode #182
-- Duplicate Emails
-- Difficulty: Easy
-- Topic: GROUP BY + HAVING
-- ============================================

SELECT email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;
