--create table customers in database orders_management
CREATE TABLE public.customers (
  	customer_id serial PRIMARY KEY,
    name varchar(255) NOT NULL,
    email varchar(255) unique,
  	phone varchar(255),
  	age int default 99
  	check(age>=18),
  	city varchar(255),
  	postal_code int,
  	check(postal_code>0),
  	country varchar(255),
 	gdpr_set boolean NOT NULL,
  	is_active boolean NOT NULL,
  	created_time TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  	updated_time timestamp,
  	reason_for_deactivation text,
  	notes text
);

--drop table
-- delete whole table and data
DROP TABLE public.customers;

--truncate table
-- delete data in table and reset auto incrementing ids
TRUNCATE TABLE public.customers RESTART IDENTITY CASCADE;

--without reseting
TRUNCATE TABLE public.customers;

--insert row with all mandatory fields and age >18
INSERT INTO public.customers(name, email, phone, age, city,postal_code, country, gdpr_set, is_active)
VALUES ('iliana', 'iliana@test.com', 123444, 38, 'sofia', 1528, 'bulgaria', true, true);

--insert row with all mandatory fields without age
INSERT INTO public.customers(name, email, phone, city,postal_code, country, gdpr_set, is_active)
VALUES ('vqra', 'vqra@test.com', 123444, 'sofia', 1528, 'bulgaria', true, true);


CREATE INDEX idx_name ON public.customers(name);
CREATE INDEX idx_phone ON public.customers(phone);
CREATE INDEX idx_email ON public.customers(email);










