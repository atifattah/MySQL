-- DEFAULT CONSTRAINT

-- The DEFAULT constraint is used to automatically assign a default value to a column when no value is provided during an INSERT operation. 
-- This helps ensure that columns always have a meaningful value, even if the user does not explicitly specify one.

select * from products;

insert into products
values
(104, "Straw", 0.00),
(105, "Napkin", 0.00),
(106, "Plastic Fork", 0.00),
(107, "Spoon", 0.00);

delete from products where product_id >= 104;

create table products (
	product_id int,
    product_name varchar(25),
    price decimal(4, 2) default 0
);

alter table products
alter price set default 0;

select * from products;

insert into products (product_id, product_name)
values
(104, "Straw"),
(105, "Napkin"),
(106, "Plastic Fork"),
(107, "Spoon");

create table transactions (
	transaction_id int,
    Transaction_amount decimal(5, 2),
    transaction_date datetime default now()
);

select * from transactions;

insert into transactions (transaction_id, Transaction_amount)
values
(3, 9.09);

insert into transactions (transaction_id, Transaction_amount)
values
(2, 7.79);

insert into transactions (transaction_id, Transaction_amount)
values
(1, 4.99);