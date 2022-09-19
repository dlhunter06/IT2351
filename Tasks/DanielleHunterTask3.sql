SELECT c.customer_last_name, o.order_date, o.shipped_date
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
ORDER BY c.customer_last_name
