--create table orders_product_quantities in database orders_management
CREATE TABLE public.orders_product_quantities (
    id serial PRIMARY KEY,
    pid INT NOT NULL,
    oid INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY(pid) REFERENCES public.products_inventory(product_id) ON DELETE cascade,
    FOREIGN KEY(oid) REFERENCES public.orders(id) ON DELETE cascade
);