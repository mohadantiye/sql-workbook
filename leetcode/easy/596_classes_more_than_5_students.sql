-- ============================================
-- LeetCode #596
-- Classes More Than 5 Students
-- Difficulty: Easy
-- Topic: GROUP BY + HAVING
-- ============================================

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;
