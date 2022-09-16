-- ******************************************************************************************
-- used by Danielle Hunter for IT2351 
-- The purpose of this query is to get the values in the columns listed from the vendors 
-- table and list them in alphabetical order by vendor name
-- *******************************************************************************************
SELECT vendor_name, vendor_city, vendor_state
FROM vendors
ORDER BY vendor_name;