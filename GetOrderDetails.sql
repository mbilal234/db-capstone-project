DELIMITER //

CREATE PROCEDURE GetOrderDetail(IN CustomerID INT)
BEGIN
    SET @stmt = CONCAT('SELECT order_id, TotalCost FROM Orders WHERE customer_id = ?', CustomerID);
    PREPARE stmt FROM @stmt;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END//

DELIMITER ;
