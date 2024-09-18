-- ROLL UP 


-- The ROLLUP clause in SQL is a type of GROUP BY operation that allows for the creation of subtotals 
-- and a grand total across multiple dimensions in the result set. 
-- It's especially useful when generating reports that require aggregated data at various levels.

select * from transactions;

select count(transaction_id), order_date
from transactions
group by order_date with rollup;

select count(transaction_id) as "# of orders", customer_id
from transactions
group by customer_id with rollup;

select * from employees;

select sum(hourly_pay) as "hourly pay", employee_id
from employees
group by employee_id with rollup;