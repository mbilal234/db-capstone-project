DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    SELECT MAX(TotalCost) AS MaximumOrderedQuantity
    FROM Orders;
END//

DELIMITER ;
