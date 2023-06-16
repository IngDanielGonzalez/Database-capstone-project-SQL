DELIMITER //
CREATE PROCEDURE CancelOrder(IN order_id2 INT)
BEGIN
    DELETE FROM orders WHERE order_id = order_id2;
END //
DELIMITER ;
call `CancelOrder`(3);