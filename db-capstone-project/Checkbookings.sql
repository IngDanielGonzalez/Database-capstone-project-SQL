CREATE PROCEDURE CheckBooking (IN date_need DATE, IN table1 INT)
BEGIN
    DECLARE Booking_status VARCHAR(100);
    
    IF EXISTS (SELECT * FROM bookings WHERE date_need = booking_date AND table_number = table1) THEN
        SET Booking_status = CONCAT('Table ', table1, ' is already booked');
    ELSE
        SET Booking_status = 'The table is available';
    END IF;
    
    SELECT Booking_status AS Bookingstatus;
END

CALL CheckBooking('2022-11-12',2);