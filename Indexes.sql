-- INDEXES

-- In SQL, an index is a database object that improves the speed of data retrieval on a table. 
-- An index works like a table of contents in a book, allowing the database to find the location of data more quickly without scanning every row in a table. 
-- However, indexes also have downsides, such as requiring additional storage 
-- and potentially slowing down INSERT, UPDATE, and DELETE operations due to the need to maintain the index structure.

select * from customers;

show indexes from customers;

create index last_name_index 
on customers(last_name);

show indexes from customers;

select * from customers
where first_name = "Poppy";

create index last_name_first_name_index
on customers(last_name, first_name);

show indexes from customers;

alter table customers
drop index last_name_index;

select * from customers
where last_name = "Puff";