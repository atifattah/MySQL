-- LIMIT CLAUSE

-- The LIMIT clause in SQL is used to specify the maximum number of rows that should be returned by a SELECT query. 
-- It is especially useful when you want to limit the result set, for example, when displaying only the top results in an ordered query.

select * from customers
limit 1;

select * from customers
order by last_name desc
limit 4;

select * from customers
limit 2, 1;
