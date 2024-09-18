-- ON DELETE


-- The ON DELETE clause in SQL is part of the foreign key constraint and specifies what happens when a referenced row in the parent table is deleted. 
-- It's used in combination with a foreign key to define the behavior when a related record is removed from the parent table.

select * from transactions;

select * from customers;

set foreign_key_checks = 1;

delete from customers
where customer_id = 4;

-- On Delete SET NULL --

insert into customers
values (4, "Poppy", "Puff", 2, "PPuff@gmail.com");

alter table transactions
drop foreign key fk_customer_id;

alter table transactions
add constraint fk_customer_id
foreign key(customer_id) references customers(customer_id)
on delete set null;

delete from customers
where customer_id = 4;

-- ON Delete CASCADE --
alter table transactions
drop foreign key fk_customer_id;

alter table transactions
add constraint fk_transaction_id
foreign key(customer_id) references customers(customer_id)
on delete cascade;

update transactions
set customer_id = 4
where transaction_id = 1005;

delete from customer 
where customer_id = 4;