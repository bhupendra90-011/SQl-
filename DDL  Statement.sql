-- table
-- DDl statement (data defination language)
-- create, drop, alter, truncate

create database regex1;
use regex1;

create table test1 (sno int);  -- tablesd create(sno  column name )

describe test1;

-- dml (insert statement)

-- dml (insert, update, delect, nerge)

insert into test1 values(10);
select * from test1;
insert into test1(sno) values(11);
insert into test1(sno) values(20), (null), (30);  -- 3 rows  insert(multiple values)

select count(sno), count(*) from test1;


create table test2 (sno int not null, salary int);
insert into test2 (sno, salary) values (20,1000);
insert into test2 (sno, salary) values (20,null);
insert into test2 (sno, salary) values (null, 1000); -- we have set constraint (error)

insert into test2(salary) values(5000000); -- error (because )
select * from test2;

create table test3 (sno int not null default 80, salary int);
insert into test3 (salary) values (1000);
insert into test3 (sno) values (5000);
select * from test3;

create table test4(sno int not null, salary int unique default 100);
insert into test4 (sno, salary) values (1000, 20000);
insert into test4(sno, salary) values (1001, 20000); --  error duplicate values
insert into test4 (sno) values (600);
select * from test4;


-- conditions
-- check conditions
create table test7 (sno int, salary int,
check (sno between 1 and 100),
check (salary in (1000,2000)));

select * from test7;

