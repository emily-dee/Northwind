-- 1
SELECT * FROM customers;

-- 2
SELECT DISTINCT country FROM customers;

-- 3
<<<<<<< HEAD
SELECT * FROM customers WHERE customer_id LIKE 'BL%'
=======
SELECT * FROM customers WHERE customer_id LIKE 'BL%';
>>>>>>> b2d7109 (missed semicolons)

-- 4
SELECT * FROM orders LIMIT 100;

-- 5
SELECT * FROM customers WHERE postal_code IN ('1010', '3012', '12209', '05023');

-- 6
SELECT * FROM orders WHERE ship_region IS NOT NULL;

-- 7
SELECT * FROM customers ORDER BY country, city;   

-- 8
INSERT INTO customers (customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax)
VALUES ('MCDUF', 'McDuff', 'Kevin Driskill', 'Billing clerk', '4539 Hawks Nest Lane', 'St Louis', 'MO', '63101', 'USA', '(314) 786-2249', '(314) 786-2249');

-- 9
UPDATE orders SET ship_region='EuroZone' WHERE ship_country='France';

-- 10
DELETE FROM order_details WHERE quantity=1;

-- 11
SELECT AVG(quantity), MAX(quantity), MIN(quantity) FROM order_details;

-- 12
SELECT AVG(quantity), MAX(quantity), MIN(quantity), COUNT(quantity) FROM order_details GROUP BY order_id;

-- 13
<<<<<<< HEAD
SELECT customer_id FROM orders WHERE order_id=10290
=======
SELECT customer_id FROM orders WHERE order_id=10290;
>>>>>>> b2d7109 (missed semicolons)

-- 14 
-- INNER JOIN
SELECT * FROM orders JOIN customers ON orders.customer_id = customers.customer_id;
-- LEFT JOIN
SELECT * FROM orders LEFT JOIN customers ON orders.customer_id = customers.customer_id;
-- RIGHT JOIN
SELECT * FROM orders RIGHT JOIN customers ON orders.customer_id = customers.customer_id;

-- 15
SELECT ship_city, ship_country FROM orders JOIN employees ON orders.employee_id = employees.employee_id WHERE employees.city='London';

-- 16
SELECT ship_name FROM orders JOIN order_details ON orders.order_id = order_details.order_id
JOIN products ON order_details.product_id = products.product_id WHERE products.discontinued=1;

-- 17
SELECT first_name FROM employees WHERE reports_to IS NULL;

-- 18
SELECT first_name FROM employees WHERE reports_to = (SELECT employee_id FROM employees WHERE first_name='Andrew');

-- 19
CREATE INDEX customer_id_index ON orders (customer_id);