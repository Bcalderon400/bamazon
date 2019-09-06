DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products(
item_id INT NOT NULL AUTO_INCREMENT,
stickers VARCHAR(45) NULL,
department_name VARCHAR(45) NULL,
price DECIMAL(10,2) NULL,
stock_quantity INT NULL,
PRIMARY KEY (item_id)
);

INSERT INTO products (stickers, department_name, price, stock_quantity )
VALUES ("Star", "School Supplies", 1.00, 150),
 ("Poop", "School Supplies", 2.00, 550),
 ("Pickle", "School Supplies", 1.50, 50),
 ("Smiley", "School Supplies", 0.75, 450),
 ("Sad", "School Supplies", 1.00, 250),
 ("Happy", "School Supplies", 1.25, 350),
 ("Crying", "School Supplies", 1.50, 75),
 ("The Finger", "School Supplies", 3.00, 25),
 ("LOL", "School Supplies", 1.50, 550),
 ("Scary", "School Supplies", 1.00, 25);


SELECT * FROM products;