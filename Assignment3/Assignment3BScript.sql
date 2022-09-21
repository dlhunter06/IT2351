/* Count and Max query used by Danielle Hunter 09/19/2022 IT2351
 This query uses the Sum and max aggregate functions to answer how many products there are
 and what is the value of the highest priced item .
************************************************************************************************************************************/

SELECT COUNT(product_id) AS "Number of Products", 
MAX(item_price) AS "Highest Priced Item"
FROM order_items
