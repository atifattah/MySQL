-- UPDATE AND DELETE

-- UPDATE Statement
-- The UPDATE statement is used to modify existing records in a table.

-- DELETE Statement
-- The DELETE statement is used to remove rows from a table.

select * from employees;

update employees
set hourly_pay = 10.25,
	hire_date = "2023-01-07"
where employee_id = 6;

delete from employees
where employee_id = 6;


