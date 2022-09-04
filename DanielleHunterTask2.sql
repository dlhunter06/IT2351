SELECT item_id, title, artist, round(unit_price * 1.04, 2) AS new_price
FROM items
order by new_price DESC