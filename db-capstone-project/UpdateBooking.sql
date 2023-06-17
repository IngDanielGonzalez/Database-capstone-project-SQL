CREATE PROCEDURE UpdateBooking(IN booking_i INT, IN bookingdate DATE)
BEGIN
    SET @message = 'Booking updated';
    UPDATE bookings
    SET booking_date = bookingdate
    WHERE booking_id = booking_i;
    SELECT @message AS bookingstatus;
END;
CALL UpdateBooking(9,'2022-12-31');