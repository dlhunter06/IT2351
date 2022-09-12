SELECT CONCAT(customer_first_name, " ", customer_last_name) AS Customer_Name, artist, unit_price AS price, order_qty AS quantity, orders.order_id,
DATE_FORMAT(order_date, '%m-%d-%y') 
AS Ordered,
DATE_FORMAT(shipped_date, '%m-%d-%y')
AS Shipped
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id
INNER JOIN order_details
ON orders.order_id = order_details.order_id
INNER JOIN items
ON order_details.item_id = items.item_id
ORDER BY customer_last_name ASC, order_qty