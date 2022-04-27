--create table customers_addresses in database orders_management
CREATE TABLE public.customers_addresses (
    address_id serial PRIMARY KEY,
    address VARCHAR(255),
    city VARCHAR(255) NOT NULL,
    province VARCHAR(255),
    state VARCHAR(255),
    postal_code INT NOT NULL,
    CHECK(postal_code>0),
    country VARCHAR(255) NOT NULL
);