-- FOREIGN KEY

-- A foreign key is a column or a set of columns in one table that uniquely identifies a row in another table. 
-- It establishes and enforces a link between the data in the two tables, ensuring referential integrity and defining the relationships between them.

create table customers (
	customer_id int primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50)
);

select * from customers;

insert into customers (first_name, last_name)
values
	("Fred", "Fish"),
    ("Larry", "Lobster"),
    ("Bubble", "Bass");
    
create table transactions (
	transaction_id int primary key auto_increment,
    amount decimal(5, 2),
    customer_id int,
    foreign key(customer_id) references customers(customer_id)
);

select * from transactions;
    
alter table transactions
drop foreign key tranmsactions_ibfk_1;

delete from transactions;
select * from transactions;

alter table transactions
auto_increment = 1000;

insert into transactions (amount, customer_id)
values
(4.99, 3),
(2.89, 2),
(3.38, 3),
(4.99, 1);

select * from transactions;
