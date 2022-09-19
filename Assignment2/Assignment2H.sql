SELECT DISTINCT title AS Title, artist AS Artist, unit_price AS Price, order_qty AS Quantity, ROUND((unit_price * order_qty)*1.085, 2) 
AS "Total with Tax"
FROM items
INNER JOIN order_details
ON items.item_id = order_details.item_id
