CREATE PROCEDURE CancelBooking(IN booking_i INT)
BEGIN
    SET @message = 'Booking cancelled';
    DELETE FROM bookings WHERE booking_id = booking_i;
    SELECT @message AS bookingstatus;
END;
CALL `CancelBooking`(9)