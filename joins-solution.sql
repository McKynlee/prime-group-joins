-- 1. Get all customers and their addresses.
SELECT "customers".first_name, "customers".last_name, "addresses".street, "addresses".city, "addresses".state, "addresses".zip  FROM "customers"
JOIN "addresses" ON "customers".id = "addresses".customer_id;

-- 2. Get all orders and their line items (orders, quantity and product).
SELECT "orders".order_date, "line_items".quantity, "line_items".product_id FROM "orders"
JOIN "line_items" ON "orders".id = "line_items".order_id;

-- 3. Which warehouses have cheetos?
SELECT "warehouse".warehouse FROM "warehouse"
JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
JOIN "products" ON "products".id = "warehouse_product".product_id
WHERE "products".id = 5;

-- 4. Which warehouses have diet pepsi?


-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.


-- 6. How many customers do we have?


-- 7. How many products do we carry?


-- 8. What is the total available on-hand quantity of diet pepsi?



-- ## Stretch
-- 9. How much was the total cost for each order?


-- 10. How much has each customer spent in total?


-- 11. How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).