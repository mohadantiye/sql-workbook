-- ============================================
-- SQL JOINS PRACTICE
-- SQL Workbook
-- ============================================


-- ============================================
-- INNER JOIN
-- Shows only matching records
-- ============================================


-- Show users and their tickets

SELECT users.name,
       users.email,
       tickets.issue
FROM users
INNER JOIN tickets
ON users.user_id = tickets.user_id;



-- Show customers and their orders

SELECT customers.name,
       orders.total_amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;



-- Show products and order information

SELECT products.product_name,
       orders.quantity,
       orders.total_amount
FROM products
INNER JOIN orders
ON products.product_id = orders.product_id;



-- ============================================
-- LEFT JOIN
-- Shows everything from the left table
-- even if there is no match
-- ============================================


-- Show all users including users without tickets

SELECT users.name,
       tickets.issue
FROM users
LEFT JOIN tickets
ON users.user_id = tickets.user_id;



-- Show all customers including customers without orders

SELECT customers.name,
       orders.order_id,
       orders.total_amount
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;



-- Find customers who have no orders

SELECT customers.name
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.order_id IS NULL;
