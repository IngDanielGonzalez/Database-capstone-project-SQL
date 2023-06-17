CREATE PROCEDURE AddBooking(IN booking_i INT, IN customer_i INT, IN bookingdate DATE, IN table2 INT)
BEGIN
    SET @messege = 'New booking added';
    INSERT INTO bookings (booking_id, booking_date, table_number, customer_id) VALUES (booking_i, bookingdate, table2, customer_i);
    SELECT @messege AS Confirmation;
END;
CALL AddBooking(9,3,'2022-12-30',4);