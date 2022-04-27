--get a list of countries ordered alphabetically from A to Z
SELECT DISTINCT country FROM public.customers_addresses ORDER BY country ASC;

--get a list of countries ordered alphabetically from Z to A
SELECT DISTINCT country FROM public.customers_addresses ORDER BY country DESC;

--get a list of cities that start with a specific letter (for example cities that start with letter S will return Sofia,
--Sozopol etc)
SELECT DISTINCT city FROM public.customers_addresses WHERE city LIKE 'S%' ORDER BY city ASC;
--get 3 different random cities located in Bulgaria
SELECT city FROM public.customers_addresses WHERE country = 'Bulgaria' ORDER BY RANDOM() LIMIT 3;

--get a list of all addresses in Bulgaria outside of Sofia, Plovdiv, Varna
SELECT address, city  FROM public.customers_addresses WHERE country = 'Bulgaria'
AND city NOT IN ('Sofia', 'Plovdiv', 'Varna');

--get last 10 added customer addresses with a province and address filled, but without a state value
SELECT * FROM public.customers_addresses
WHERE province IS NOT NULL AND address IS NOT NULL
AND state IS NULL
ORDER BY address_id desc
LIMIT 10;

--get addresses that have 4-digit postal code that start with 3 and end with 7.
--Order the result alphabetically by country and city from A to Z

SELECT address, country, city, postal_code
FROM public.customers_addresses
WHERE cast(postal_code as text) LIKE  '3__7'
ORDER BY country ASC, city ASC;
