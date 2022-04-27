--create table customers in database orders_management
CREATE TABLE public.customers (
  	customer_id serial PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
  	phone VARCHAR(255),
  	age INT DEFAULT 99
  	CHECK(age>=18),
 	gdpr_set BOOLEAN NOT NULL,
  	is_active BOOLEAN NOT NULL,
  	created_time TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  	updated_time TIMESTAMP WITH TIME ZONE,
  	reason_for_deactivation TEXT,
  	notes TEXT
);

--drop table
-- delete whole table and data
DROP TABLE public.customers;

--truncate table
-- delete data in table and reset auto incrementing ids
TRUNCATE TABLE public.customers RESTART IDENTITY CASCADE;

--without resetting
TRUNCATE TABLE public.customers;

CREATE INDEX idx_name ON public.customers(name);
CREATE INDEX idx_phone ON public.customers(phone);
CREATE INDEX idx_email ON public.customers(email);










