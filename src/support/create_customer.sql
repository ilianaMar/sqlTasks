--insert row with all mandatory fields and age >18
INSERT INTO public.customers(name, email, phone, age, city,postal_code, country, gdpr_set, is_active)
VALUES ('iliana', 'iliana@test.com', 123444, 38, 'sofia', 1528, 'bulgaria', true, true);

--insert row with all mandatory fields without age
INSERT INTO public.customers(name, email, phone, city,postal_code, country, gdpr_set, is_active)
VALUES ('vqra', 'vqra@test.com', 123444, 'sofia', 1528, 'bulgaria', true, true);

-- insert row with all fields
INSERT INTO public.customers(name, email, phone, city,postal_code,
                country, gdpr_set, is_active, updated_time, reason_for_deactivation, notes)
VALUES ('testUser', 'testUser@test.com', 123444, 'sofia', 1528, 'bulgaria', true,
        false, CURRENT_TIMESTAMP, 'test', 'test notes');

INSERT INTO public.customers(name, email, phone, age,  city, postal_code,
                country, gdpr_set, is_active, updated_time, reason_for_deactivation, notes)
VALUES ('secondTestUser', 'secondTestUser@test.com', 123444, 22, 'sofia', 1528, 'bulgaria', true,
        false, CURRENT_TIMESTAMP, 'reason notes', 'test notes');