CREATE PROCEDURE GetMaxQuantity() SELECT MAX(quantity) FROM orders;
CALL GetMaxQuantity()