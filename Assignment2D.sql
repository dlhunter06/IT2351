SELECT customer_last_name AS CustomerName, order_id,
DATE_FORMAT(order_date, '%m-%d-%y') 
AS Ordered,
DATE_FORMAT(shipped_date, '%m-%d-%y')
AS Shipped
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id
ORDER BY customer_last_name