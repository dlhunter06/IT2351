/*Subquery in the WHERE Clause used by Danielle Hunter 09/25/2022 IT2351
 This query uses a subquery in the where clause to find distinct vendor names that are in the vendors table and invoices table.
************************************************************************************************************************************/

SELECT vendor_name
FROM vendors
WHERE vendor_name in
	(SELECT DISTINCT vendor_name
		FROM invoices)
ORDER BY vendor_name;
