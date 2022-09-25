/*DATEDIFF and DATE_ADD query used by Danielle Hunter 09/25/2022 IT2351
 This query uses the DATEDIFF function to show how many days have passed since the invoice was created and the payment was received, 
 and the DATE_ADD function to show the d 
 from the invoices table.
************************************************************************************************************************************/

SELECT invoice_id, invoice_date, payment_date, DATEDIFF(payment_date, invoice_date) AS "Term", 
DATE_ADD(invoice_date, INTERVAL 30 DAY) AS "Due Date"
FROM invoices
