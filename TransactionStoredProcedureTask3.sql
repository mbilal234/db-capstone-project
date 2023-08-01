DELIMITER //

CREATE PROCEDURE AddValidBooking(IN bookingDate DATE, IN tableNumber INT)
BEGIN
    DECLARE bookingCount INT;
    START TRANSACTION;
    
    SELECT COUNT(*) INTO bookingCount
    FROM Bookings
    WHERE BookingDate = bookingDate AND TableNumber = tableNumber;
    
    IF bookingCount > 0 THEN
        ROLLBACK;
        SELECT 'Booking cancelled. Table is already booked on the specified date.' AS Status;
    ELSE
        INSERT INTO Bookings (BookingDate, TableNumber, CustomerID) VALUES (bookingDate, tableNumber, 0); -- Replace 0 with the actual CustomerID for the booking
        COMMIT;
        SELECT 'Booking successful. Table reserved for the specified date.' AS Status;
    END IF;
END//

DELIMITER ;
