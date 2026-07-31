-- ============================================
-- FILTERING PRACTICE
-- SQL Workbook
-- ============================================


-- WHERE condition

SELECT *
FROM users
WHERE account_status = 'active';


-- Filtering numbers

SELECT *
FROM products
WHERE price > 100;


-- Greater than or equal

SELECT *
FROM orders
WHERE total_amount >= 500;


-- Less than

SELECT *
FROM products
WHERE price < 50;


-- Multiple conditions using AND

SELECT *
FROM users
WHERE account_status = 'active'
AND user_id > 2;


-- Multiple options using IN

SELECT *
FROM customers
WHERE country IN ('Turkey', 'Germany');


-- Searching with LIKE

SELECT *
FROM users
WHERE email LIKE '%test.com';
