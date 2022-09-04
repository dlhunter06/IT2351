SELECT customer_first_name, customer_last_name, concat(customer_first_name, ' ' ,  customer_last_name) AS Name
FROM customers
ORDER BY customer_last_name ASC, customer_first_name