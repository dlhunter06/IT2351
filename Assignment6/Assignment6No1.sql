/*Stored procedure script named ProductCount 
 used by Danielle Hunter 10/09/2022 IT2351
 This script creates a stored procedure called ProductCount 
 to count all products in the products table and 
 display a message stating if the count is higher, 
 equal to or lower than 18.
************************************************************************************************************************************/
 
 USE danielle_guitar_shop;
 
 DROP PROCEDURE IF EXISTS ProductCount;
 
 DELIMITER //
 
 CREATE PROCEDURE ProductCount()
 BEGIN
	DECLARE count_all_products_var INT;
    
    SELECT COUNT(product_id)
    INTO count_all_products_var
    FROM products;
    
    IF count_all_products_var >= 18 THEN
		SELECT 'The number of products is greater than or equal 
        to 18' AS message;
   ELSE SELECT 'The number of products is less than 18' AS message;
	END IF;
END//
    
    DELIMITER ;
    
    CALL ProductCount();
