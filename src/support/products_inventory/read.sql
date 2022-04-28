--Get the count of all available products in stock
SELECT SUM(available_quantity) as available_products FROM public.products_inventory WHERE is_in_stock IS TRUE;

--Get the average product price with VAT for all categories
--avg sum per category
SELECT product_type, AVG(price_with_vat) as avg_sum_price
FROM public.products_inventory
GROUP BY product_type
ORDER BY product_type ASC;

--for all products
SELECT AVG(price_with_vat) as avg_sum_price FROM public.products_inventory;

--Get the total amount of all available items in stock (use price with VAT and available qty.)
SELECT SUM(cast((available_quantity * price_with_vat) as decimal)) as total_sum
FROM public.products_inventory
WHERE is_in_stock IS TRUE;

--Find the most and least expensive item from the table
SELECT MIN(price_with_vat) as min_vat_price, MAX(price_with_vat) as max_vat_price
FROM public.products_inventory;

--Find the most expensive item in each warehouse
SELECT warehouse, MAX(price_with_vat) as max_vat_price_per_warehouse
FROM public.products_inventory
GROUP BY warehouse
ORDER BY warehouse  ASC;

--Get the count of all products for each category
SELECT product_type, SUM(available_quantity) as available_products_per_category
FROM public.products_inventory
GROUP BY product_type
ORDER BY product_type ASC;

--Get the count of all products for each category in and out of stock
SELECT product_type, SUM(available_quantity) as available_products_per_category
FROM public.products_inventory
WHERE is_in_stock IS TRUE
GROUP BY product_type
ORDER BY product_type ASC;

SELECT product_type, SUM(available_quantity) as available_products_per_category
FROM public.products_inventory
WHERE is_in_stock IS FALSE
GROUP BY product_type
ORDER BY product_type ASC;

--Get the count of all products for each category where the products count is more than 3
SELECT product_type, COUNT(*) as available_products_per_category
FROM public.products_inventory
WHERE available_quantity > 3
GROUP BY product_type
ORDER BY product_type ASC;

--Get the inventory amount for each warehouse
SELECT warehouse, SUM(cast((available_quantity * price_with_vat) as decimal)) as inventory_sum
FROM public.products_inventory
WHERE is_in_stock is true
GROUP BY warehouse
ORDER BY warehouse ASC;

--Get all product categories stored by each warehouse
SELECT warehouse ,COUNT(DISTINCT product_type) as product_type_count
FROM public.products_inventory
GROUP BY warehouse
ORDER BY warehouse ASC;

--Get the avаrage product categories hold by the warehouses
SELECT warehouse, cast(avg(available_quantity) as integer) as avg_quantity
FROM public.products_inventory
WHERE is_in_stock IS TRUE
GROUP BY warehouse
ORDER BY warehouse asc;