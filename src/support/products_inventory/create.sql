--insert products in products_inventory table
-- use trigger function before insertion to calculate price with VAT
CREATE or REPLACE FUNCTION vat_price() RETURNS trigger AS $$
  BEGIN
    NEW.price_with_vat = NEW.price_without_vat * 1.2;
    RETURN NEW;
  END
$$ LANGUAGE plpgsql;

CREATE or REPLACE TRIGGER
  vat_price
BEFORE INSERT OR UPDATE ON
  public.products_inventory
FOR EACH ROW EXECUTE PROCEDURE
  vat_price();


INSERT INTO public.products_inventory(product_name, available_quantity, product_type,
                    price_without_vat, is_in_stock, warehouse, supplier_id) VALUES
('product1', 20, 'category1', 100.20, true, 1, 1),
('product2', 0, 'category1', 50.00,  false, 1, 1),
('product3', 40, 'category1', 150.00,  true, 1, 2),
('product4', 10, 'category1', 200.45,  true, 1, 2),
('product5', 30, 'category1', 50.05,  true, 1, 3),
('product6', 15, 'category2', 250.05,  true, 2, 3),
('product7', 135, 'category2', 350.05,  true, 2, 4),
('product8', 45, 'category2', 450.05,  true, 2, 4),
('product9', 23, 'category3', 1000.05,  true, 3, 5),
('product10', 0, 'category3', 450.05,  false, 3, 6),
('product11', 12, 'category3', 750.05,  true, 3, 7),
('product12', 0, 'category4', 250.05,  false, 4, 8),
('product13', 5, 'category4', 850.05,  true, 4, 8),
('product14', 90, 'category4', 2.05,  true, 4, 9),
('product15', 1000, 'category4', 233.05,  true, 4, 10),
('product16', 10, 'category5', 850.05,  true, 4, 10),
('product17', 20, 'category6', 3.05,  true, 4, 11),
('product18', 30, 'category7', 233.05,  true, 4, 12);
