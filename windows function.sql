use regex1;
drop table actor_cp;

create table actor_cp as
select first_name as fname, last_name as last from  sakila.actor
where actor_id between 10 and 14;

select * from actor_cp;

update actor_cp set  last='goyal' where fname="ZERO";

-- delect is a dml opeartion

truncate actor_cp;

-- difference 
-- truncate is a ddl statement
-- in truncate is  do not provide any condition  but delect in provide condition 
-- truncate be can not reburt (rollback)
-- in case  if you have execute any ddl  statement  do not rollback 

-- onbject menas=>> object other structure  which can be managed store and data 

--  window function ==>> windeows fuction is useed to perform the calculation set of rows .
--  window fucntion used to appli with refernce to current rows 

-- 1, Over clause ==>> to apply the function over of  window 

use world;

select * from country;
select code, name,continent, population,(select sum(population) from country) from country;

select code, name,continent, population, sum(population) over()from country;
select code, name,continent, avg(population) over(), continent,sum(population) over()from country;

-- 2. PARTITION BY ==>>  it is same a group by which is used to apply  the logi into group 

select code, name,continent, population, sum(population) over(partition by continent)from country;   

-- running sum  and commulative sum 
-- use order by 

select code, name,continent, population, sum(population) over(order by population)from country;

-- partition by 

select continent population, sum(population) from country group by continent ;

select  code, name,continent, population,sum(population) over(), sum(population) over(partition by code) from country;
