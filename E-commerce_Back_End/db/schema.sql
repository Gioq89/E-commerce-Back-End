-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;
-- CREATE DATABASE
CREATE DATABASE ecommerce_db;
-- USE DATABASE
USE ecommerce_db;
-- CREATE TABLES
CREATE TABLE category(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE product(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL DEFAULT 10,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE TABLE tag(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    tag_name VARCHAR(255)
);

CREATE TABLE product_tag(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    product_id INT,
    tag_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (tag_id) REFERENCES tag(id)
);


