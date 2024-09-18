-- ALTER TABLE

-- The ALTER TABLE statement in SQL is used to modify an existing table’s structure. 
-- It allows you to add, delete, or modify columns, and manage constraints in a table without losing the data stored in it.

alter table employees 
add phone_number varchar(15);

select * from employees;

alter table employees
rename column phone_number to email;

alter table employees
modify column email varchar(100);

alter table employees
modify email varchar(100)
after last_name;

alter table employees
drop column phone_number;