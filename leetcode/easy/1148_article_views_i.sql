-- ============================================
-- LeetCode #1148
-- Article Views I
-- Difficulty: Easy
-- Topic: DISTINCT + WHERE
-- ============================================

SELECT DISTINCT author_id
FROM Views
WHERE author_id = viewer_id;
