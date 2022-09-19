SELECT i.title, i.artist, o.order_qty
FROM items i
INNER JOIN order_details o
ON i.item_id = o.item_id
ORDER BY i.title
