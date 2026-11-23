# Session 2 

/*
Shop 	: Laxmi Super Store
Purpose : Practice Select, column aliases and calculated columns on the kirana_store_db database
*/

use kirana_store_db;

# First Query

select 
	product_name as 'Item',
    category as 'Section',
    unit_price_inr as 'Price (Rs)'
from products;


# Second query

select
	product_name,
    unit_price_inr * stock_qty as stock_value_inr,
    unit_price_inr * 1.05 as price_after_5pct_hike
    from products;
    
# Third Quary

select * from sales;

# Old test query , switched off with a # comment:

# SELECT product_name, stock_qty FROM products;

