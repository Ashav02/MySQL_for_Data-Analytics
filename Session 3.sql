# Session 3

use kirana_store_db;

# Task 1 : Restock alter

select
	product_name,
    category,
    stock_qty
from products
where stock_qty < 20;

select 
	product_name,
    category,
    unit_price_inr
from products
where unit_price_inr >= 150;

# Task 2 : Diwali Offer Query 

# Version 1
select
	product_name,
    category,
    unit_price_inr
from products
where (category = 'Snacks' or category = 'Oils')
and unit_price_inr <= 200;

# Version 2 

select
	product_name,
    category,
    unit_price_inr
from products
where category = 'Snacks' or (category = 'Oils'
and unit_price_inr <= 200);

# Version 3

select 
	product_name,
    category,
    unit_price_inr 
from products
where category = 'Snacks'
or category = 'Oils'
and unit_price_inr <=200;


# Task 3 : NOT / <>

# Version 3

select *
from sales
where NOT sale_date ='2026-10-02'
and not quantity = 1;

# Version 4

select * 
from sales
where sale_date <> '2026-10-02'
and quantity <> 1;

