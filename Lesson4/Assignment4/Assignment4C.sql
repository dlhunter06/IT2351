/*CAST functions used by Danielle Hunter 09/25/2022 IT2351
 This query uses CAST FUNCTIONS such AS DATE, DATE_FORMAT and TIME_FORMAT
 To convert date_added column as the date, year and month and time entered seperately.
************************************************************************************************************************************/

SELECT date_added, CAST(date_added AS DATE) AS Date_Entered,
DATE_FORMAT(date_added, '%Y-%m') AS Year_and_Month, 
TIME_FORMAT(date_added, "%H:%i:%s") AS "Time"
FROM products
