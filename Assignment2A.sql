/* BETWEEN Operator Query used by Danielle Hunter IT2351 FALL 2022
The purpose of this query is to grab the select columns and provide
them with an alias then only show prices between 15 and 18 and then
sort the columns in ascending order by price and artist. */

SELECT title AS Album, artist AS Artist, unit_price AS Price
FROM items
WHERE unit_price BETWEEN 15 AND 18
ORDER BY unit_price ASC, artist;