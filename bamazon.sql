DROP DATABASE bamazon; 
CREATE DATABaSE bamazon;
USE bamazon;

CREATE TABLE products(
item_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(50) NOT NULL,
department_name VARCHAR(50) NOT NULL,
price DECIMAL(5,2),
stock_quantity INTEGER(11) NOT NULL,
PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Nike Air VaporMax Flyknit 2", "Shoes", 194.99, 3);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Adidas Ultraboost", "Shoes", 199.99, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Converse All Star", "Shoes", 64.99, 8);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Vans Classic Slip-On", "Shoes", 65.00, 9);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Adidas Original T-Shirt", "Apparel", 40.00, 7);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Champion Weave Hoodie", "Apparel", 75.00, 6);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Nike Windrunner Jacket", "Apparel", 120.00, 3);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Fitbit Alta HR", "Accesories", 94.47, 4);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Blender Bottle Shaker", "Accesories", 9.50, 10);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("FILA Socks", "Accesories", 17.99, 10);


SELECT*FROM products; 




