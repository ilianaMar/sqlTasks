--customers_pending_payments: customer id and name with list of pending orders that are not payed,
--order date and total sum expected to be payed.

CREATE VIEW customers_pending_payments AS
SELECT public.customers.customer_id , public.customers.name as customer_name, oid as order_id,
SUM(price_with_vat*quantity) as order_amount, date_of_order
FROM public.products_inventory
INNER JOIN public.orders_product_quantities
ON public.products_inventory.product_id = public.orders_product_quantities.pid
INNER JOIN public.orders
ON public.orders_product_quantities.oid = public.orders.id
INNER JOIN public.customers
ON public.orders.customer_id = public.customers.customer_id
WHERE public.orders.is_order_payed IS FALSE
GROUP BY public.customers.customer_id , customer_name, order_id, date_of_order;






