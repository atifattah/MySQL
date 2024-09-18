-- INSERT STATEMENT

-- The INSERT statement in SQL is used to add new rows of data into a table. 
-- You can insert data into all columns of the table or only specific columns. 
-- It is one of the most commonly used SQL commands for populating a database with data.

select * from employees;

insert into employees
values (2, "Squidward", "Tentacles", 15.00, "2023-01-03"),
	   (3, "Spongebob", "Squarepants", 12.50, "2023-01-04"),
       (4, "Patrick", "Star", 12.50, "2023-01-05"),
       (5, "Sandy", "Cheeks", 17.25, "2023-01-06");
       
insert into employees (employee_id, first_name, last_name)
values (6, "Sheldon", "Plankton");