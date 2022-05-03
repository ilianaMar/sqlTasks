--customers_contact_info: all customers contact information - phone, address and etc.

CREATE VIEW customers_contact_info AS
SELECT name, email, phone, address, city, province, state, postal_code, country
FROM public.customers
INNER JOIN public.customers_addresses
ON public.customers.address_id = public.customers_addresses.address_id;