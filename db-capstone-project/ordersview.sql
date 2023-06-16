CREATE VIEW OrdersView AS SELECT order_id, quantity, total_cost AS Cost FROM orders WHERE Quantity > 2;
Select * from OrdersView;