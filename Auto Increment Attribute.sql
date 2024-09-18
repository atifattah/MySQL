-- AUTO-INCREMENT ATTRIBUTE

-- The AUTO_INCREMENT attribute is used to automatically generate a unique value for a column, typically the primary key,
-- whenever a new record is inserted into a table. 
-- This attribute simplifies the management of unique identifiers for records 
-- and ensures that each record gets a distinct and sequential value without requiring manual input.

create table transaction (
	transaction_id int primary key auto_increment,
    amount decimal(5, 2)
);

insert into transaction (amount)
values
(4.99), (5.99), (2.87), (3.88), (2.00), (3.77);

select * from transaction;

delete from transaction;

alter table transaction
auto_increment = 1000;

insert into transaction (amount)
values
(4.99), (5.99), (2.87), (3.88), (2.00), (3.77);