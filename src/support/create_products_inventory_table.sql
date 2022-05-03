--create table products_inventory in database orders_management
CREATE TABLE public.products_inventory (
    product_id serial PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    available_quantity INT NOT NULL,
    product_type VARCHAR(255) NOT NULL,
    price_without_vat DECIMAL(10, 2) NOT NULL,
    price_with_vat DECIMAL(10, 2),
    is_in_stock BOOLEAN NOT NULL,
    warehouse INT NOT NULL
);

ALTER TABLE public.products_inventory ADD COLUMN supplier_id INT;

ALTER TABLE public.products_inventory ADD FOREIGN KEY (supplier_id) REFERENCES public.suppliers (id)
ON DELETE cascade;