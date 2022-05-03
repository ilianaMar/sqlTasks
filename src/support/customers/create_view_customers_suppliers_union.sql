--phones: a union of all suppliers and customers ids, names and phone numbers

CREATE VIEW customers_suppliers_union_view AS
SELECT customer_id as customer_supplier_id, name, phone FROM public.customers
UNION
SELECT id as customer_supplier_id, name, phone FROM public.suppliers
ORDER BY customer_supplier_id ASC;