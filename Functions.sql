-- FUNCTIONS

-- Functions are built-in operations that perform specific calculations or transformations on data and return a result. 
-- Functions can be categorized into several types, each serving different purposes such as mathematical calculations, 
-- string manipulation, date and time operations, and data aggregation.

select count(amount)
	from transactions;
    
select count(amount) as "today amount"
	from transactions;
    
select max(amount) as maximum
	from transactions;
    
select min(amount) as minimum
	from transactions;
    
select avg(amount) as average
	from transactions;

select sum(amount) as sum
	from transactions;