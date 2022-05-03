--supplier_inventory: supplier id, name and phone with available products (qty > 0),
--quantity, price with and without VAT and the warehouse the item is located

CREATE VIEW supplier_inventory AS
SELECT public.suppliers.id as supplier_id , name, phone, price_without_vat, price_with_vat, warehouse, available_quantity
FROM public.suppliers
INNER JOIN public.products_inventory
ON public.suppliers.id = public.products_inventory.supplier_id
WHERE available_quantity > 0;