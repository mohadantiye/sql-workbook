-- ============================================
-- LeetCode #586
-- Customer Placing the Largest Number of Orders
-- Topic: GROUP BY + COUNT + ORDER BY
-- ============================================

SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC
LIMIT 1;
