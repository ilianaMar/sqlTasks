--list of customers whos phone number is listed as phone number of another customer
SELECT a.customer_id as first_customer_id, b.customer_id as second_customer_id, a.name as first_name,
       b.name as second_name, a.phone, b.phone
FROM public.customers a, public.customers b
WHERE a.phone = b.phone
AND a.customer_id <> b.customer_id
ORDER by first_customer_id, second_customer_id ASC;

--using left and right joins, find customers without orders and orders without active customers
-- all customers with orders
SELECT DISTINCT public.customers.customer_id, name
FROM public.customers
RIGHT JOIN public.orders
ON public.customers.customer_id = public.orders.customer_id
WHERE is_active IS TRUE
ORDER BY public.customers.customer_id;


-- all customers without orders
SELECT DISTINCT public.customers.customer_id, name
FROM public.customers
LEFT JOIN public.orders
ON public.customers.customer_id = public.orders.customer_id
WHERE public.orders.customer_id IS NULL
AND is_active IS TRUE
ORDER BY public.customers.customer_id;


--using full join, find customers without orders and orders without active customers
-- all active users without orders
SELECT DISTINCT public.customers.customer_id, name
FROM public.customers
FULL JOIN public.orders
ON public.customers.customer_id = public.orders.customer_id
WHERE public.orders.customer_id IS NULL
ORDER BY public.customers.customer_id;

-- all active users with orders
SELECT DISTINCT public.customers.customer_id, name
FROM public.customers
FULL JOIN public.orders
ON public.customers.customer_id = public.orders.customer_id
WHERE public.customers.is_active IS FALSE
AND public.orders.customer_id IS NOT NULL
ORDER BY public.customers.customer_id;
