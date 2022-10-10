 /*Stored procedure script named insertCategory
 used by Danielle Hunter 10/09/2022 IT2351
 This script creates a stored procedure that uses inserted parameters
 to add a new row into a table of a new category named Winds.
************************************************************************************************************************************/

 
 USE danielle_guitar_shop;
 
 DROP PROCEDURE IF EXISTS insertCategory;
 
 DELIMITER //
 
 CREATE PROCEDURE insertCategory
 (
    IN category_id_param INT,
    IN category_name_param VARCHAR(50)
 )
 BEGIN
 DECLARE duplicate_entry_for_key TINYINT DEFAULT FALSE;
    
	DECLARE CONTINUE HANDLER FOR 1062
		SET duplicate_entry_for_key = TRUE;
        
INSERT INTO categories(category_id, 
category_name)
values (category_id_param, category_name_param);
    
    IF duplicate_entry_for_key = TRUE THEN
		SELECT 'Row was not inserted - duplicate key encountered.'
        AS message;
    ELSE 
	SELECT '1 row was inserted.' AS message;
  END IF;
END//
    
    DELIMITER ;
    
    CALL insertCategory(5, 'Winds');
