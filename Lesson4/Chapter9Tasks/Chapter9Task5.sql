/*IFNULL, IF, and JOIN query used by Danielle Hunter 09/25/2022 IT2351
 This query uses the IFNULL function to enter text "No phone number provided" where phone numbers had null values.
 The IF function to indicate if an invoice was either High or lower than the amount of 1500.
 The JOIN function brought the invoice total of those vendors with invoices in the invoice table.
 from the vendors table.
************************************************************************************************************************************/

SELECT vendor_name, 
	ifnull(vendor_phone, 'No phone provided') AS "Phone Number",
IF(invoice_total < 1500, "High", "Low") AS "Invoice High or Low"
FROM vendors
JOIN invoices
ON vendors.vendor_id = invoices.vendor_id;