SELECT orders.number, sum(order_product.quantity*products.price) AS totalPrice
FROM orders 
INNER JOIN order_product ON orders.id=order_product.order_id
INNER JOIN products ON order_product.product_id=products.id
INNER JOIN customers ON customers.id=orders.customer_id
WHERE customers.first_name ='Charlize'
Group by orders.number
