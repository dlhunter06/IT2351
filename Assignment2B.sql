/*Concatenation query used by Danielle Hunter IT2351 Fall 2022
The use of this query is to combine two columns as one with an 
alias and only show the customers from Ohio and New York */

SELECT CONCAT(customer_first_name, " ", customer_last_name)
AS CustomerName, customer_state AS State
FROM customers
WHERE customer_state IN ('OH', 'NY')
ORDER BY state, customer_last_name, customer_first_name;