#Task 1

# <p>Create a database named `kirana_store_db` in MySQL
# and a table `products` with product_id (INT, primary key), product_name, category, unit_price_inr (DECIMAL(8,2)) and stock_qty (INT).
# Insert 12 products for a fictional kirana shop you name, in four categories (Pulses, Grains, Oils, Snacks),
# with prices from 20 to 650, at least 3 priced above 150, and at least 4 with stock below 20.
# Save the statements in `kirana_setup.sql`. Hint: One INSERT can hold many rows: `INSERT INTO products VALUES (...), (...);`</p>

create database kirana_store_db;
use kirana_store_db;

drop table if exists products;
create table products(
product_id int,
product_name varchar (20),
category varchar (20),
unit_price_inr decimal (8,2),
stock_qty int,
primary key(product_id));

insert into products
value(1, "Moong", "Pluses", '49.5', 10),
	 (2, "Channa", "Pluses", '49.5', 20),
     (3, "Toor dal", "Pluses", '49.5', 25),
	 (4, "Sunflower", "Oils", '99.5', 20),
     (5, "Rice Brand", "Oils", '99.5', 25),
     (6, "Groundnut", "Oils", '99.5', 30),
     (7, "Rice", "Grains", '160.5', 10),
     (8, "Seeds", "Grains", '160.5', 10),
     (9, "jowar", "Grains", '160.5', 10),
     (10, "Chips", "Snacks", '19.5', 25),
     (11, "Sev", "Snacks", '19.5', 15),
     (12, "Nachos", "Snacks", '19.5', 10);
     
select * from products;

#Task 2 
drop table if exists sales;
create table sales(
	sale_id int auto_increment,
    product_id int,
    quantity int,
    sale_date date,
    total_amt decimal (10,2),
    primary key(sale_id),
    constraint fk_product 
    Foreign key(product_id) references products(product_id));
    
insert into sales (product_id, quantity, sale_date, total_amt)
values(1, 2, '2026-10-01', 99.00),
	 (2, 3, '2026-10-01', 148.50),
     (3, 1, '2026-10-01', 49.50),
     (4, 2, '2026-10-02', 199.00),
     (5, 1, '2026-10-02', 99.50),
     (6, 3, '2026-10-02', 298.50),
     (7, 2, '2026-10-03', 221.00),
     (8, 1, '2026-10-03', 110.50),
     (9, 4, '2026-10-03', 442.00),
     (10, 5, '2026-10-04', 197.50),
     (11, 2, '2026-10-04', 79.00),
     (12, 3, '2026-10-04', 118.50),
     (1, 1, '2026-10-05', 49.50),
     (4, 2, '2026-10-05', 199.00),
     (7, 1, '2026-10-05', 110.50);
     
select * from sales;

#Task 3


