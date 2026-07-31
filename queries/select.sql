-- ============================================
-- SELECT PRACTICE
-- SQL Workbook
-- ============================================


-- Select all columns from users

SELECT *
FROM users;


-- Select specific columns

SELECT name, email
FROM users;


-- Select active users

SELECT *
FROM users
WHERE account_status = 'active';


-- Sort users by ID

SELECT *
FROM users
ORDER BY user_id ASC;


-- Show the 5 highest orders

SELECT *
FROM orders
ORDER BY total_amount DESC
LIMIT 5;
