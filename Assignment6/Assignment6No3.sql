/*Stored function script named new_price
 used by Danielle Hunter 10/09/2022 IT2351
 This script creates a stored function that calculates the
 new price for the item that is entered as the parameter
 then returns that calculation for that item
 as the new price.
************************************************************************************************************************************/

 
 USE danielle_guitar_shop;
 
 DROP FUNCTION IF EXISTS new_price;
 
 DELIMITER //
 
 CREATE FUNCTION new_price
 (
    item_id_param INT
 )
 RETURNS DECIMAL (9,2)
 DETERMINISTIC READS SQL DATA
 BEGIN
    DECLARE new_price_var DECIMAL (9,2);
    
    SELECT item_price - discount_amount
    INTO new_price_var
    FROM order_items
    WHERE item_id = item_id_param;
    
    RETURN new_price_var;
END//
    
    DELIMITER ;
    
    SELECT product_id,
		new_price(item_id) AS new_price
	FROM order_items
  
