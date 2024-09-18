-- UNION OPERATOR

-- In SQL, the UNION operator is used to combine the results of two or more SELECT statements into a single result set. 

-- The key points to remember are:
-- Columns Must Match: 
-- Each SELECT statement must have the same number of columns, and the corresponding columns must have compatible data types.
-- Column Names: 
-- The column names in the result set are taken from the first SELECT statement.
-- Duplicate Rows: 
-- By default, UNION removes duplicate rows from the result set. 
-- If you want to include duplicates, you should use UNION ALL instead.

create  table income (
	income_name varchar(50),
    amount int
);

select * from income;

insert into income
values
("orders", 1000000.00),
("merchandise", 50000.00),
("services", 125000.00);

create  table expenses (
	expense_name varchar(50),
    amount int
);

insert into expenses
values
("wages", -250000.00),
("taxes", -50000.00),
("repairs", -15000.00);

select * from expenses;

select * from income
union
select * from expenses;

select first_name, last_name from employees
union 
select first_name, last_name from customers;

insert into customers
values
(5, "Sheldon", "Plankton");

select * from customers;