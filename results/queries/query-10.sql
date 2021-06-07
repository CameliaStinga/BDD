SELECT customers.first_name,customers.last_name, COUNT(orders.number) as NumberOfOrders
FROM customers
LEFT JOIN orders ON orders.customer_id=customers.id
GROUP by customers.first_name,customers.last_name
ORDER by customers.last_name
