DELIMITER //

CREATE PROCEDURE CheckBooking(IN bookingDate DATE, IN tableNumber INT)
BEGIN
    DECLARE bookingCount INT;
    SELECT COUNT(*) INTO bookingCount
    FROM Bookings
    WHERE BookingDate = bookingDate AND TableNumber = tableNumber;
    
    IF bookingCount > 0 THEN
        SELECT 'Table is already booked on the specified date.' AS Status;
    ELSE
        SELECT 'Table is available for booking.' AS Status;
    END IF;
END//

DELIMITER ;
