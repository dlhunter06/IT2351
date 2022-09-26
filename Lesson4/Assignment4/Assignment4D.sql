/*CAST functions used by Danielle Hunter 09/25/2022 IT2351
 This query uses CAST FUNCTIONS such AS LENGTH, LOCATE and SUBSTRING_INDEX
 To show the length of the email address, the location index of the @ symbol, 
 the string located before the @ symbol as Username
 and the string located after the @ symbol as Domain.
************************************************************************************************************************************/

SELECT email_address, 
LENGTH(email_address) AS "Length",
LOCATE("@", email_address) AS "@",
SUBSTRING_INDEX(email_address, '@', 1) AS Username,
SUBSTRING_INDEX(email_address, '@', -1) AS Domain
FROM customers