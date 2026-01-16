
-- data types

-- number=> int, decimal 
-- tinyint , smallint, mediumint,  int , bigint 
-- 1 byte,2 byte,3 byte,4 byte,

use regex1;

create table yash1(salary tinyint);

insert into yash1 values(127);
insert into yash1 values(128);

create table yash2(salary float, price double);
insert into yash2 values(100.6781241, 100.6781241);
select * from yash2;

-- string  values char vs  varchar()
-- fixed size character
-- variable length  character

create table yash3(name varchar(20), gender char(10));
insert into  yash3 values('tushar','male'),('aman','male'), ('ot','female');
insert into yash3 values('raj        ','male        ');
select *, length(name), length(gender) from yash3;



-- char datatype  much faste than varcharin char it truncate the 
-- side space  from the last 


-- DDL(data defination language ) Statement 
-- create(table) 
-- drop, truncate, alter

create table raj123(col int);

-- create a table using select (CTAS)
create table actor_cp as
select first_name, last_name from sakila.actor;

select * from actor_cp;

-- column name change kerne ke liye 
select first_name as fname, last_name as lname from sakila.actor;
select * from actor_cp;

drop table actor_cp;    -- table structue and data both are delected
select * from actor_cp; 

-- create table actor_cp as
-- select first_name as fname, last_nameas lname from sakila.actor
-- where actor_id between  10 and 14;

-- Alter command
alter table actor_cp add column(salary int);

alter table actor_cp add constraint new_key  primary key(fname);  -- primary key added
alter   table  actor_cp drop column last;   -- column drop


-- DML statement
-- update set col = value
-- insert

SET GLOBAL
