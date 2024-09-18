-- ORDER BY

-- The ORDER BY clause in SQL is used to sort the result set of a SELECT query by one or more columns. 
-- Sorting can be done in ascending or descending order, and it helps to organize the data in a meaningful way.

select * from employees;

select * from employees
order by last_name desc;

select * from employees
order by first_name desc;

select * from employees
order by hire_date desc;

select * from transactions
order by amount;

select * from transactions
order by amount, customer_id;