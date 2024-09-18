-- VIEWS

-- In SQL, a view is a virtual table based on the result of a SELECT query. 
-- It does not store data physically; instead, it provides a way to present data from one or more tables in a specific format or structure. 
-- Views are useful for simplifying complex queries, abstracting data for security purposes, and providing different perspectives on the same data.

select * from employees;

create view employee_attendance as 
select first_name, last_name
from employees;

select * from employee_attendance
order by last_name;

select * from customers;

alter table customers 
add column email varchar(50);

update customers
set email = "PPuss@gmai.com"
where customer_id = 4;

create view vustomer_emails as
select email from customers;

select * from vustomer_emails;

insert into customers
values
(5, "Pearl", "Crabs", Null, "PCrabs@gmail.com");