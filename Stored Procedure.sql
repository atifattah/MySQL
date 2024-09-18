-- Stored Procedure 

-- Stored procedures in SQL are a set of SQL statements that can be saved and executed on the database server. 
-- They allow you to encapsulate repetitive or complex logic and reuse it across different parts of the application. 
-- Stored procedures can take parameters, perform operations like queries, inserts, updates, deletes, and return results or output parameters.

select first_name, last_name
from transactions
inner join customers
on transactions.customer_id = customers.customer_id;

CALL get_customers();

DELIMITER $$
CREATE PROCEDURE get_customers()
BEGIN
	select * from customers;
END $$
DELIMITER ;

call get_customers();

drop procedure get_customers;

delimiter $$
create procedure find_customer(in id int)
begin
	select * 
    from customers
    where customer_id = id;
end $$
delimiter ;

call find_customer(3);

drop procedure find_customer;

delimiter $$
create procedure find_customer(in f_name varchar(50), in l_name varchar(50))
begin
	select *
    from customers
    where first_name = f_name
    and 
    last_name = l_name;
end $$
delimiter ;

call find_customer("Larry", "Lobster");