PREPARE GetOrderDetail FROM 'SELECT order_id, quantity,total_cost FROM orders WHERE customer_id_fk = ?';
SET @id=1;
EXECUTE GetOrderDetail USING @id;