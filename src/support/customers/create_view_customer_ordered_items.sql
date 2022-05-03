--customer_ordered_items: customer id and name with ordered product and product type

CREATE VIEW customer_ordered_items AS
SELECT public.customers.customer_id , public.customers.name as customer_name, product_name, product_type
FROM public.products_inventory
   INNER JOIN public.orders_product_quantities
   ON public.orders_product_quantities.pid = public.products_inventory.product_id
   INNER JOIN public.orders
   ON public.orders_product_quantities.oid = public.orders.id
   INNER JOIN public.customers
   ON public.orders.customer_id = public.customers.customer_id;
