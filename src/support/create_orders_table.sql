--create table orders in database orders_management
CREATE TABLE public.orders (
    id serial PRIMARY KEY,
    customer_id INT NOT NULL,
    is_order_completed BOOLEAN NOT NULL,
    is_order_payed BOOLEAN NOT NULL,
    date_of_order TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    date_order_completed TIMESTAMP WITH TIME ZONE,
    FOREIGN KEY(customer_id) REFERENCES public.customers(customer_id) ON DELETE cascade
);