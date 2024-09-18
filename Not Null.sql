-- NOT NULL CONSTRAINT

-- The NOT NULL constraint is used to ensure that a column cannot have a NULL value. 
-- It is a fundamental aspect of data integrity, as it enforces that every row in a table must have a value for columns defined with this constraint.

create table products (
	product_id int,
    product_name varchar(25),
    price decimal(5, 2) not null
    );
    
alter table products
modify price decimal(5, 2) not null;

select * from products;

insert into products
values
(104, "Cookie", null);