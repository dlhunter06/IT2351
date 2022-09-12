SELECT customer_id, order_id,
DATE_FORMAT(order_date, '%m-%d-%y') 
AS Ordered,
DATE_FORMAT(shipped_date, '%m-%d-%y')
AS Shipped
FROM orders