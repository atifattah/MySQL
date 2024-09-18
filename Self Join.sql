-- SELF JOIN

-- A self join in SQL is a join where a table is joined with itself. 
-- This allows you to compare rows within the same table. 
-- Although the table is the same, you treat it as if there are two identical tables by using table aliases.

select * from customers;

alter table customers
add referral_id int;

update customers
set referral_id = 1
where customer_id = 2;

update customers
set referral_id = 2
where customer_id = 4;

select * 
from customers as a
inner join customers as b
on a.referral_id = b.customer_id;

select a.customer_id, a.first_name, a.last_name,
	   concat(b.first_name, " ", b.last_name) as "referred by"
from customers as a
inner join customers as b
on a.referral_id = b.customer_id;

select a.customer_id, a.first_name, a.last_name,
	   concat(b.first_name, " ", b.last_name) as "referred by"
from customers as a
left join customers as b
on a.referral_id = b.customer_id;

select * from employees;

alter table employees
add supervisor_id int;

update employees
set supervisor_id = 1
where employee_id = 5;

select a.first_name, a.last_name,
		concat(b.first_name, " ",b.last_name) as "reports to"
from employees as a
inner join employees as b
on a.supervisor_id = b.employee_id;