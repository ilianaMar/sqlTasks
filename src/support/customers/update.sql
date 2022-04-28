--update customer by id and change contact phone
UPDATE public.customers SET phone = 888888888 WHERE customer_id = 4;

--update customer by id and update all address information
--update customer by id and deactivate account
UPDATE public.customers SET name = 'updatedName', email = 'updatedUser@gmail.com',
                            phone = 444444, gdpr_set = false, is_active = true, updated_time = null,
                           reason_for_deactivation = null , notes = null WHERE customer_id = 4;

--update customer by id and activate account
UPDATE public.customers SET  is_active = true, updated_time = null,
                            reason_for_deactivation = null , notes = null WHERE customer_id = 3;