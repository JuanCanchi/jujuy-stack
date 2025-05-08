ALTER TABLE products
ADD COLUMN category_id UUID;

ALTER TABLE products
ADD CONSTRAINT fk_category
FOREIGN KEY (category_id)
REFERENCES categories(id)
ON DELETE SET NULL;
