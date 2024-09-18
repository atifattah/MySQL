-- SUB QUERY

-- A subquery (also known as an inner query or nested query) in SQL is a query embedded inside another SQL query. 
-- The result of the subquery is used by the outer query to further refine or process data. 
-- Subqueries can be found in various SQL clauses such as SELECT, FROM, WHERE, and even HAVING.

select * from employees;

select first_name, last_name, hourly_pay,
	(select avg(hourly_pay) from employees) as average_pay
from employees;

select first_name, last_name, hourly_pay
from employees
where hourly_pay > (select avg(hourly_pay) from employees);

select * from transactions;

select first_name, last_name
from customers
where customer_id not in
(select distinct customer_id
from transactions
where customer_id is not null);

