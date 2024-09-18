-- CONCATENATE

-- Concatenation refers to the operation of joining two or more strings together into a single string. 
-- This is commonly used to combine data from different columns or to format strings for output. 
-- The specific syntax for concatenation can vary depending on the SQL database you are using.

select * from employees;

select concat(first_name, last_name) as full_name
from employees;

select concat(first_name, " ", last_name) as full_name
from employees;