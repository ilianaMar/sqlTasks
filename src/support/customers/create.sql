--insert row with all mandatory fields and age >18
INSERT INTO public.customers(name, email, phone, age, gdpr_set, is_active)
VALUES ('iliana', 'iliana@test.com', 123444, 38, true, true);

--insert row with all mandatory fields without age
INSERT INTO public.customers(name, email, phone, gdpr_set, is_active)
VALUES ('vqra', 'vqra@test.com', 123444, true, true);

-- insert row with all fields
INSERT INTO public.customers(name, email, phone, gdpr_set, is_active, updated_time, reason_for_deactivation, notes)
VALUES ('testUser', 'testUser@test.com', 123444, true, false, CURRENT_TIMESTAMP, 'test', 'test notes');

INSERT INTO public.customers(name, email, phone, age, gdpr_set, is_active, updated_time, reason_for_deactivation, notes)
VALUES ('secondTestUser', 'secondTestUser@test.com', 123444, 22, true,false,
        CURRENT_TIMESTAMP, 'reason notes', 'test notes');