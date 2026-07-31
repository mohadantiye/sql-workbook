-- ============================================
-- AGGREGATE FUNCTIONS PRACTICE
-- SQL Workbook
-- ============================================


-- COUNT: Count all customers

SELECT COUNT(*)
FROM customers;


-- COUNT with condition

SELECT COUNT(*)
FROM users
WHERE account_status = 'active';


-- COUNT unresolved tickets

SELECT COUNT(*)
FROM tickets
WHERE is_resolved = FALSE;


-- SUM: Total order amount

SELECT SUM(total_amount)
FROM orders;


-- SUM with condition

SELECT SUM(total_amount)
FROM orders
WHERE order_status = 'completed';


-- AVG: Average order amount

SELECT AVG(total_amount)
FROM orders;


-- MIN: Lowest product price

SELECT MIN(price)
FROM products;


-- MAX: Highest order amount

SELECT MAX(total_amount)
FROM orders;


-- GROUP BY: Count tickets by priority

SELECT priority, COUNT(*)
FROM tickets
GROUP BY priority;


-- GROUP BY with SUM

SELECT customer_id, SUM(total_amount)
FROM orders
GROUP BY customer_id;


-- HAVING: Filter groups

SELECT customer_id, SUM(total_amount)
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 1000;

