/*UPPER, SUBSTRING, LOCATE and RIGHT query used by Danielle Hunter 09/25/2022 IT2351
 This query uses the UPPER function to capitalize all letters of the vendor_name.
 The SUBSTRING and LOCATE functions to find part of the string needed.
 The RIGHT function to parse the last 4 digits of the vendor phone number
 from the vendors table.
************************************************************************************************************************************/

SELECT vendor_name, 
	UPPER(vendor_name),
    SUBSTRING(
           SUBSTRING( vendor_name, LOCATE(' ', vendor_name) + 1),
           1,
           LOCATE( ' ', SUBSTRING( vendor_name, LOCATE(' ', vendor_name) + 1) ) - 1
       ) AS "Second Word",
vendor_phone, RIGHT(vendor_phone, 4) AS "Last 4"
FROM vendors