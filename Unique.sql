-- UNIQUE CONSTRAINT

-- The UNIQUE constraint in SQL ensures that all the values in a column or a set of columns are distinct across all rows of a table. 
-- This constraint enforces the uniqueness of data, meaning no two rows can have the same value(s) in the column(s) defined with the UNIQUE constraint.

create table products (
	product_id int, 
    product_name varchar(25) unique,
    price decimal(4, 2)
    );
    
select * from products;

# if unique contraint not created at the begining
alter table products
add constraint 
unique(product_name);

select * from products;

insert into products
values
(100, "Hamburger", 3.99),
(101, "Fries", 1.89),
(102, "Soda", 1.00),
(103, "Ice Cream", 1.49);
