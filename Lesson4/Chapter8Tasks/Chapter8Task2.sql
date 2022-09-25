/*Formatting query used by Danielle Hunter 09/25/2022 IT2351
 This query uses the cast function to show full date and time for invoice_date column 
 and the format function to show the number with commas and rounded with no zeros on the payment_total column 
 from the invoices table.
************************************************************************************************************************************/

SELECT invoice_date, CAST(invoice_date AS DATETIME) AS "Full Date", 
FORMAT(payment_total, 0) AS "Total Payment"
FROM invoices
