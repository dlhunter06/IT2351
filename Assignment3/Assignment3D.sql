
/* Group by and aggregate functions count and sum query used by Danielle Hunter 09/20/2022 IT2351
 This query uses the Sum aggregate function to answer total quantity of each product with an addition of ROLLUP to summarize the rows.
************************************************************************************************************************************/

SELECT category_name, products.product_name, 
sum(order_items.quantity) AS "Total quantity"
FROM categories
join products
ON categories.category_id = products.category_id
join order_items
ON products.product_id = order_items.product_id
GROUP BY category_name, products.product_name WITH ROLLUP
order by category_name desc
