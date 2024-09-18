-- Triggers --

-- Triggers in SQL are special types of stored procedures that are automatically executed (or "triggered") in response to specific events on a table or view. --
-- These events can be actions such as INSERT, UPDATE, or DELETE. --
-- Triggers are commonly used to enforce business rules, automatically update or validate data, or perform auditing tasks.--

select * from employees;

alter table employees
add column salary decimal(10, 2)
after hourly_pay;

select * from employees;

update employees
set salary = hourly_pay * 2080;

select * from employees;

create trigger before_hourly_pay_update
before update on employees
for each row
set new.salary = (new.hourly_pay * 2080);

show triggers;

update employees
set hourly_pay = 50
where employee_id = 1;

update employees
set hourly_pay = hourly_pay + 1;

select * from employees;

delete from employees
where employee_id = 6;

select * from employees;

create trigger before_hourly_pay_insert
before insert on employees
for each row
set new.salary = (new.hourly_pay * 2080);

select * from employees;

insert into employees
values(6, "Sheldon", "Park", 10, NULL, "Janitor", "2023-01-07", 5);

select * from employees;

create table expense(
	expense_id int primary key,
    expense_name varchar(50),
    expense_total decimal(10, 2)
);

select * from expense;

insert into expense
values
(1, "Salary", 0),
(2, "Supplies", 0),
(3, "Taxes", 0);

select * from expense;

update expense
set expense_total = (select sum(salary) from employees) 
where expense_name = "Salary";

select * from expense;  

create trigger after_salary_delete
after delete on employees
for each row
update expense
set expense_total = expense_total - old.salary
where expense_name = "salary";

select * from expense;

delete from employees
where employee_id = 6;

select * from expense;

create trigger after_salary_insert
after insert on employees
for each row
update expense 
set expense_total = expense_total + new.salary
where expense_name = "salary";

select * from expense;

insert into employees
values
(6, "Sheldon", "Plank", 10, null, "Janitor", "2023-01-07", 5);

select * from expense;

create trigger after_salary_update
after update on employees
for each row
update expense
set expense_total = expense_total + (new.salary - old.salary)
where expense_name = 'salary';

select * from expense;

update employees
set hourly_pay = 100
where employee_id = 1;

select * from expense;