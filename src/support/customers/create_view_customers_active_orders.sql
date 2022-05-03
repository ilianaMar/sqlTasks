--customers_active_orders: customer id, name and phone with order id, status and date of ordering

CREATE VIEW customers_active_orders AS
SELECT public.customers.customer_id, name, phone, public.orders.id as order_id,
            is_order_completed, is_order_payed, date_of_order, date_order_completed
FROM  public.customers
INNER JOIN public.orders
ON  public.customers.customer_id = public.orders.customer_id
WHERE is_order_completed  IS TRUE;