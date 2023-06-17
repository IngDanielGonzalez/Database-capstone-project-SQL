CREATE PROCEDURE AddValidBooking(IN dateneed DATE, IN table2 INT,IN customer_i INT)
BEGIN
    DECLARE Booking_status VARCHAR(100);
    
    START TRANSACTION;
    
    IF NOT EXISTS (SELECT * FROM bookings WHERE booking_date = dateneed AND table_number = table2) THEN
        INSERT INTO bookings (booking_date, table_number, customer_id) VALUES (dateneed, table2, customer_i);
        SET Booking_status = CONCAT('Table ', table2, ' has been successfully booked.');
        COMMIT;
    ELSE
        SET Booking_status = CONCAT('Table ', table2, ' is already booked. Booking cancelled.');
        ROLLBACK;
    END IF;
    
    SELECT Booking_status AS Bookingstatus;
END;
CALL AddValidBooking("2022-12-17",6,4);


