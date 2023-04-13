CREATE TABLE Sales_customers(
customer_id INT PRIMARY KEY, 
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
phone VARCHAR (50) NOT NULL,
email VARCHAR (50) NOT NULL,
street VARCHAR (50),
city VARCHAR (50),
state VARCHAR (50),
zip_code VARCHAR (5)
);

CREATE TABLE Sales_orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_status VARCHAR (50),
oder_date DATE,
required_date DATE,
shipped_date DATE,
store_id INT,
staff_id INT)

CREATE TABLE Ssales_staffs(
staff_id INT PRIMARY KEY,
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
email VARCHAR (50) NOT NULL,
phone VARCHAR (50) NOT NULL,
active TINYINT,
store_id INT,
manager_id INT);

CREATE TABLE sales_stores(
store_id INT PRIMARY KEY,
store_name VARCHAR (50) NOT NULL,
phone VARCHAR (50) NOT NULL,
email VARCHAR (50) NOT NULL,
street VARCHAR (50),
city VARCHAR (50),
state VARCHAR (50),
zip_code VARCHAR (5)
);


CREATE TABLE sales_order_items (
order_id INT,
item_id INT,
product_id INT,
quantity INT,
list_price DECIMAL (7,2),
discount DECIMAL (7,2),
);


CREATE TABLE production_categories(
category_id INT PRIMARY KEY,
category_name VARCHAR (50),
);

CREATE TABLE production_products(
product_id INT PRIMARY KEY,
product_name VARCHAR (50) NOT NULL,
brand_id INT,
category_id INT,
model_year DATE,
list_price DECIMAL (7,2)
);

CREATE TABLE production_stocks(
store_id INT, 
product_id INT,
quantity INT
);

CREATE TABLE production_brands(
brand_id INT,
brand_name VARCHAR (50) NOT NULL
);

