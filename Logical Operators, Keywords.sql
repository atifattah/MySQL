-- LOGICAL OPERATORS AND KEYWORDS

-- Logical Operators:
-- Logical operators in SQL are used to combine or modify conditions in WHERE clauses and other conditional expressions. 
-- They help in filtering data based on multiple criteria, allowing for more complex and nuanced queries. 
-- The most commonly used logical operators are AND, OR, and NOT.

-- Keywords:
-- Keywords are reserved words that have special meaning and are used to perform various operations and define various elements within a SQL query. 
-- Keywords form the syntax of SQL and are integral to writing valid SQL statements

alter table employees
add column job varchar(25) after hourly_pay;

select * from employees;

update employees
set job = "manager"
where employee_id = 1;

update employees
set job = "cashier"
where employee_id = 2;

update employees
set job = "cook"
where employee_id = 3;

update employees
set job = "cook"
where employee_id = 4;

update employees
set job = "assistant manager"
where employee_id = 5;

update employees
set job = "janitor"
where employee_id = 6;

select * from employees
where hire_date < "2023-01-05";

select * from employees
where hire_date < "2023-01-05" and job = "cook";

select * from employees
where job = "cook" or job = "cashier";

select * from employees
where not job = "manager";

select * from employees
where not job = "manager" and not job = "assistant manager";

select * from employees
where hire_date between "2023-01-04" and "2023-01-07";

select * from employees
where job in ("cook", "cashier", "janitor");