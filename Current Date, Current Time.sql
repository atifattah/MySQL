-- CURRENT DATE AND CURRENT TIME

-- In SQL, functions like CURRENT_DATE and CURRENT_TIME are used to retrieve the current date and time from the database server. 
-- These functions return the date and time when the query is executed, and they are helpful when you want to automatically insert 
-- or compare date and time values.

create table test(
1my_date date,
my_time time,
my_datetime datetime
);

select * from test;

insert into test
values
(current_date(), current_time(), now());


insert into test
values
(current_date() - 1, null, null);
