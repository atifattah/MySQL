-- PRIMARY KEY

-- A primary key is a column or a set of columns in a table that uniquely identifies each row in that table. 
-- It is a fundamental concept in relational databases used to enforce the uniqueness and integrity of data.

create table transaction (
	transaction_id int primary key,
    amount decimal(5, 2)
);
    
select * from transaction;

alter table transaction
add constraint 
primary key(transaction_id);

insert into transaction
values
(1000, 9.09);

insert into transaction
values
(null, 9.09);

select amount from transaction
where transaction_id = 1002;