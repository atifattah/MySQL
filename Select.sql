-- SELECT STATEMENT

-- The SELECT statement is one of the most fundamental and widely used SQL commands. 
-- It is used to retrieve data from one or more tables in a database. 
-- You can specify which columns of data to retrieve, filter the data using conditions, and manipulate or aggregate the data before retrieving it.

select * from employees;

select first_name, last_name 
from employees;

select last_name, first_name
from employees;

select * from employees
where employee_id = 1;

select * from employees
where first_name = "Spongebob";

select * from employees
where hourly_pay >= 15;

select * from employees
where hire_date <= "2023-01-03";

select * from employees
where employee_id != 1;

select * from employees
where hire_date is not null;