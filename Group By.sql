-- GROUP BY

-- The GROUP BY clause in SQL is used to group rows that have the same values in specified columns into summary rows, 
-- often used in conjunction with aggregate functions like COUNT(), SUM(), AVG(), MIN(), and MAX(). 
-- It allows you to perform calculations (aggregations) on groups of rows, rather than on individual rows.

select * from transactions;
create table transactions (
	transaction_id int,
    amount decimal(5, 2),
    customer_id int,
    order_date date);

alter table transactions
add column order_date date;

insert into transactions
values
(1000, 4.99, 3, "2023-01-01"), 
(1001, 2.89, 2, "2023-01-01"), 
(1002, 3.38, 3, "2023-01-02"), 
(1003, 4.99, 1, "2023-01-02"), 
(1004, 1.00, null, "2023-01-03"), 
(1005, 2.49, 4, "2023-01-03"), 
(1006, 5.48, null, "2023-01-03");

select sum(amount), order_date 
from transactions
group by order_date;

select max(amount), order_date 
from transactions
group by order_date;

select min(amount), order_date 
from transactions
group by order_date;

select avg(amount), order_date 
from transactions
group by order_date;

select count(amount), order_date 
from transactions
group by order_date;

select sum(amount), customer_id
from transactions
group by customer_id;

select max(amount), customer_id
from transactions
group by customer_id;

select min(amount), customer_id
from transactions
group by customer_id;

select avg(amount), customer_id
from transactions
group by customer_id;

select count(amount), customer_id
from transactions
group by customer_id;

select count(amount), customer_id
from transactions
group by customer_id
having count(amount) > 1
and customer_id is not null;

