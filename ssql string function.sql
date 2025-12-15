-- comment (Sql query language)
-- Query kerna 

show databases;

-- to create database (to orgnize data)
create database tata;

-- to utilize the database for which data will be stored
use tata;

-- to see tables 
show tables;

create table nexon( price int, color char(20));
show tables;

use world;

show tables;

describe country;
select * from country;

-- any order you can print colimn 
select name, population, region from country;

select name, population-500, region from country;

-- to filter we use WHERE clause

select * from country where indepyear=1984;

select * from country  where continent ='Asia';

select * from country  where indepyear in(1991 , 1960);

select * from country  where indepyear not between 1960 and 1991;

select*from country where lifeexpectancy in (75.1, 77.8);

SELECT NAME, CONTINENT FROM COUNTRY  WHERE REGION <> 'SOUTH EUROPE';

select name, continent, population*1.1+ population from country;

SELECT NAME, POPULATION, REGION FROM COUNTRY WHERE POPULATION NOT BETWEEN 3000 AND 500000;


-- like operator
-- match a pattern
--
-- name => letter start, letter include, letter end
--
-- %: special character / wildcard character
-- %: zero or more character

-- (underscore): only 1 character
-- 'A'
--
select * from country where name like 'Ir%';

select * from country where name like 'Ir%';

-- get thwe cpontinant n ame where the start letter n
-- get the name continant  whrter  second last p
-- whrer the country
-- whreer the name and continent  second leter a and  second last  a  in region column
-- whrere the 3rd charc,  c and 
-- get the name region  where  continent is north america and south america  

select name, continent from  country where  continent  like 'n%';
select name, continent from country where  continent  like '%p_';
select * from country where  continent  like '____';
select name , continent , region from country where  region  like '_a%a_';
select region from country where region like  '__c%sia';

-- basic functions 
-- functions
-- case conversion

select name, upper(name) , lower(name) from country;

-- twoo column ko combine kerta he = concat
select name,code,  concat(name, '$', code)  from country;


select name,code,  concat(name, '$', code , bittu) ,
concat_ws('$', name, code, 'tushar') from country;


select name ,code, concat(name, ' ',code) from country
where concat(name,' ',code) = 'Afghanistan Afg';

--  get name , continentwhere in the region the continent  name should be present 

select name ,  region, continent from  country where region like concat('%' , continent);

select name, region , continent from country where name like region;


-- conuntry name , population name where the first char of  continent should be same of country 

select name, continent, population from country where left(continent,1)=left(name,1);

select char_length("b4h6") from dual;

-- function strings 
-- sub string 

select name, substring(name,1) from country;

select name, substring(name,2), substring(name,2,4) from country;

--  Q.1 get name continent population where the s first character of continent
-- should be same the country

select name , continent, substr(name,1,1),substr(name,1,1)
from country where substr(name,1,1)=substr(continent,1,1);

-- get the counrty  name and population where the strting with three char, of country is alg
select name, population, substr(name,1,3) from country where  substr(name,1,3) like 'alg';

-- kisi specfic   character ki posotion ko  batata he 
-- instr()
select name, instr(name,'e') from country;

-- char_length() --->> char length find
select name, char_length(name)from country;


-- trim() --->>>> extra space remove 
select char_length('   bittu   ');

select trim('   bittu   ');

-- rtrim() ---->> right space remove 
-- ltrim() ----->> left space remove
select rtrim('   bittu   ');
select ltrim('   bittu   ');

-- repeated char ko trim  remove kerna ho to
select trim(both 'z' from '      tuszz harzzzz');

--  specfic character ko trim kerna ho to
select name, trim(both 'A' from name),trim(both 'a' from name) from country;

-- lpad And rpad
-- when we want to define a column wi th fixed size  
select name, population, rpad(population,9,"#") from country;




