--insert row with all mandatory fields and age >18
INSERT INTO public.customers(name, email, phone, age, gdpr_set, is_active, address_id)
VALUES ('iliana', 'iliana@test.com', 123444, 38, true, true ,1),
('user1', 'user1@test.com', 123444, 40 ,  true, true ,2),
('user2', 'user2@test.com', 123444, 50 ,  true, true, 3),
('user3', 'user3@test.com', 8888888, 60 ,  true, true, 4),
('user4', 'user4@test.com', 8888888, 90 ,  true, true, 5),
('user5', 'user5@test.com', 333333, 20 ,  true, true, 6),
('user6', 'user6@test.com', 333333, 29 ,  true, true, 7),
('user7', 'user7@test.com', 444444, 30 ,  true, true, 8),
('user8', 'user8@test.com', 333333, 38 ,  true, true, 9),
('user9', 'user9@test.com', 333333, 40 ,  true, true, 10),
('user10', 'user10@test.com', 333333, 33 ,  true, true, 11),
('user11', 'user11@test.com', 333333, 66 ,  true, true, 12),
('user12', 'user12@test.com', 333333, 22 ,  true, true, 13),
('user13', 'user13@test.com', 333333, 45 ,  true, true, 14),
('user14', 'user14@test.com', 333333, 22 ,  true, true, 15),
('user15', 'user15@test.com', 333333, 90 ,  true, true, 16),
('user16', 'user16@test.com', 333333, 22 ,  true, true, 17),
('user17', 'user17@test.com', 333333, 77 ,  true, true, 18),
('user18', 'user18@test.com', 333333, 42 ,  true, true, 19),
('user19', 'user19@test.com', 333333, 33 ,  true, true, 20),
('user20', 'user20@test.com', 333333, 34 ,  true, true, 21);

--insert row with all mandatory fields without age
INSERT INTO public.customers(name, email, phone, gdpr_set, is_active, address_id)
VALUES ('vqra', 'vqra@test.com', 123444, true, true, 22);

-- insert row with all fields
INSERT INTO public.customers(name, email, phone, gdpr_set, is_active, updated_time,
        reason_for_deactivation, notes, address_id)
VALUES ('testUser', 'testUser@test.com', 123444, true, false, CURRENT_TIMESTAMP, 'test', 'test notes', 23);

INSERT INTO public.customers(name, email, phone, age, gdpr_set, is_active, updated_time,
        reason_for_deactivation, notes, address_id)
VALUES ('secondTestUser', 'secondTestUser@test.com', 123444, 22, true,false,
        CURRENT_TIMESTAMP, 'reason notes', 'test notes', 24);