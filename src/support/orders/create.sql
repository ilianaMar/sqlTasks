--insert rows for orders with  1 to many with customers
INSERT INTO public.orders(customer_id, is_order_completed, is_order_payed, date_order_completed) VALUES
(1, false, false, null),
(1, true, true, null),
(1, true, true, CURRENT_TIMESTAMP),
(2, true, false, null),
(2, true, true, CURRENT_TIMESTAMP),
(3, true, true, CURRENT_TIMESTAMP),
(3, true, false, null),
(4, true, true, CURRENT_TIMESTAMP);

