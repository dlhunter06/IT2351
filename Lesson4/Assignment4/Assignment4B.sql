/*Subquery in the WHERE Clause used by Danielle Hunter 09/25/2022 IT2351
 This query uses a subquery in the where clause to find distinct vendor names that are in the vendors table and invoices table.
************************************************************************************************************************************/
SELECT product_name
FROM products
WHERE product_name in
	(SELECT DISTINCT product_name
		FROM order_items) 
ORDER BY product_name