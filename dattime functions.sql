use world;

-- numeric and date function
-- round() ----> point vali value ko hata deta he  (75.4 = 75)
 select lifeexpectancy, round(lifeexpectancy) from country;

select 30.68 , round(30.641,2);
-- 6-one place, 5 10 place, 4 => 100 place
-- 6 => nearest 10. =>0 yh fir 10
-- 76
-- 0 yh 100
-- 176 200 yh 0
-- 176
-- round => round of to nearest 10th place, nearest 1000
select 6.0012, round (517.0012,-1);

select 6.0012, round (517.0012,-3);

select 6.0012, round (517.0012,1);

-- truncate()
select 6.0012, round (517.0012,1),truncate(3653.68,1);

select mod(10,3), ceil(4.000001), floor(4.9999999), pow(2,4);

-- date function

-- now(),  curent date and time

select now(), current_date(), current_time();

-- date functions (now () <= current date and time

select now(), current_timestamp(), current_date(), current_time();

-- add date function =>. by default date add, ( month, year, time)

SELECT NOW(),ADDDATE(NOW(), 2), date_add(NOW(), INTERVAL 2 HOUR);




select now(), year(now());

-- select payment_date, adddate (payment_date, 2) from sakila.payment;

-- extract (year / month / hour / minute / week)
select now(), extract( day from now());

-- date formate => extruct kerna but  with a string (message)
 select now(), extract(year from now()), date_format(now(), 'year is %M');
 
 select 6.0012, truncate(3653.684,2);
 
 -- what are aggrigate function
 -- what are relationship in sql 
 -- dbms, sql, mysql, all topics.
 
 
--  Aggregrate function(muitliline functions ) =>  will give you sime result 
-- distinct
-- distinct (continent)

 select distinct continent from  country;
 
  select distinct continent, region from  country;
  
  -- aggregrate => to apply some calculation over set of rows 
  -- count(colimns) => only data  present will be  counted   
  
  select count(indepyear) from country;
  select count(*) from country;
  
   select count(population), sum(population), avg(population),
   max(population), min(population) from country;
   
   select count(continent) ,count(distinct continent) from country;
   
   select count(indepyear), count(*) from country where continent='Asia';
   
   -- gate the country name the total region  along with avg lifeexpectancy and 
   -- teh total populaton  for the  country who have got the independance after 1947 before 1998;
   
   select count(name), count(region), count(lifeexpectancy),count(population) from country where indepyear > 1947 and indepyear >1998 ;
   
   -- get the total number of country the unic regions along with the total population  and 
   -- the highest lifeexpextancy  rate get the total with the total capitals for 
   -- the country starting  with  latter a and letter d ;
   
   select count(name), count(distinct region), sum(population), 
   max(lifeexpectancy), sum(capital)  from country where name like 'a%' or  '%D';


-- group by  statement ( similar  value ko collect kerne ke liye in s group)  

select continent ,count(name)from  country group by continent; 



-- jis bhi column pe aap  group by kerte ho 

-- uncqe to find ou the total country and the total population  for each indepyear ;

select count(name), sum(population), indepyear from country   group by indepyear;


   