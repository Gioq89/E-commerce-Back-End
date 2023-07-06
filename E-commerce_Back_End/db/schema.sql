-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;
-- CREATE DATABASE
CREATE DATABASE ecommerce_db;
-- USE DATABASE
USE ecommerce_db;
-- CREATE TABLES
CREATE TABLE category(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    category_name string NOT NULL
);

CREATE TABLE product(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    product_name string NOT NULL,
    price INT NOT NULL,
    stock INT NOT NULL DEFAULT 10 DECIMAL,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE TABLE tag(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    tag_name string 
);

CREATE TABLE product_tag(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    product_id INT,
    tag_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (tag_id) REFERENCES tag(id)
);


