--query that retrieves only customer’s name and phone
SELECT name, phone FROM public.customers;

--query that retrieves only customer’s name and full address for correspondance
SELECT name, phone, email FROM public.customers;

--query that retrieves only internal information about the user - GDPR status, profile status, date created,
--date deactivated, reason for deactivation and the notes taken of the user
SELECT name, is_active, gdpr_set, created_time, updated_time, reason_for_deactivation, notes FROM public.customers;

--retrieving all customer info by customer id
SELECT * FROM public.customers WHERE customer_id = 4;
