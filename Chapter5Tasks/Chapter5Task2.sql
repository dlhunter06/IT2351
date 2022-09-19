/* UPDATE query used by Danielle Hunter IT2351 Sept. 18,2022
The purpose of this query is to update two columns in the terms table where the terms_id column has an idea of 6.
*/

SELECT * FROM terms

UPDATE terms
SET terms_description = "Net due 125 days", terms_due_days = 125
WHERE terms_id = 6;