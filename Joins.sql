-- JOINS

-- Joins are used to combine rows from two or more tables based on a related column between them. 
-- Joins are essential for querying relational databases because they allow you to retrieve data from multiple tables in a single query. 
-- Here’s an overview of the different types of joins and how they work:
-- 1. Inner Join
-- 2. Left Join
-- 3. Right Join
-- 4. Outer Join
-- 5. Cross Join
-- 6. Self Join

insert into transactions (amount, customer_id)
values (1.00, null);

select * from transactions;

insert into customers (first_name, last_name)
values("Poppy", "Puff");

select * from customers;

select *
from transactions
inner join customers
on transactions.customer_id = customers.customer_id;

select transaction_id, amount, first_name, last_name
from transactions
inner join customers
on transactions.customer_id = customers.customer_id;

select *
from transactions
left join customers
on transactions.customer_id = customers.customer_id;

select *
from transactions
right join customers
on transactions.customer_id = customers.customer_id;