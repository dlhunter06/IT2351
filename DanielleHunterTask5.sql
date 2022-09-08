/* Join query used by Danielle Hunter IT2351
The purpose of this query is to grab information concerning the order quantity from a customer of specific items providing the title and artist name of that item.
This information is shared between two different tables.
*/
SELECT p.customer_id, i.title, i.artist, o.order_qty
FROM items i
INNER JOIN order_details o
ON i.item_id = o.item_id
JOIN orders p
ON o.order_id = p.order_id
ORDER BY p.customer_id, i.title