--Create a view bulgarian_customers_addresses which contains only addreses in Bulgaria;

CREATE VIEW bulgarian_addresses AS
SELECT * FROM public.customers_addresses WHERE country = 'Bulgaria';