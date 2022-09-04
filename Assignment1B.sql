/* The purpose of this query is to display the title, artist, and the price of the unit from the items table and show only those
that has a unit price higher than 16.
Created by Danielle Hunter 09/03/2022
*/

SELECT title, artist, unit_price
FROM items
WHERE unit_price > 16