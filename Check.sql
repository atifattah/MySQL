-- CHECK CONSTRAINT

-- A CHECK constraint is used to enforce specific conditions or rules on the values in a column or a set of columns. 
-- It ensures that the data entered into the database meets certain criteria 
-- and helps maintain data integrity by restricting the type and range of values that can be stored in a column.

select * from employees;
create table employees (
	employee_id int,
    first_name varchar(50),
    last_name varchar(50),
    hourly_pay decimal (5, 2),
    hire_date date,
    constraint check_hourly_pay check (hourly_pay >= 10.00)
);

alter table employees
add constraint check_hourly_pay check (hourly_pay >= 10.00);


insert into employees
values
(6, "Sheldon", "Plankton", 5.0, "2023-01-07");


insert into employees
values
(6, "Sheldon", "Plankton", 12.00, "2023-01-07");

