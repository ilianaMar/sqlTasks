--create table suppliers in database orders_management
CREATE TABLE public.suppliers (
  	id serial PRIMARY KEY,
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


ALTER TABLE public.suppliers ADD COLUMN address_id INT UNIQUE NOT NULL;

ALTER TABLE public.suppliers ADD FOREIGN KEY (address_id) REFERENCES public.suppliers_addresses (id);