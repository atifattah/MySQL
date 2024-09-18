-- WILDCARD CHARACTERS

-- Wildcard Characters are used in conjunction with the LIKE operator to perform pattern matching in SELECT, UPDATE, and DELETE queries. 
-- Wildcards allow you to search for a specific pattern of characters rather than an exact match.

select * from employees;

select * from employees
where first_name like "s%";

select * from employees
where first_name like "%b";

select * from employees
where job like "_ook";

select * from employees
where hire_date like "____-__-02";

select * from employees
where job like "_a%";