SELECT c.customer_id, c.name, o.order_id, o.total_cost AS Cost, m.MenuName, i.CourseName, i.StarterName
FROM costumer_details AS c
JOIN orders AS o ON c.customer_id = o.customer_id_fk
JOIN menu AS m ON o.menu_id = m.menu_id
JOIN menuitems AS i ON m.menu_id = i.menu_id;