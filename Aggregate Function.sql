use world;

show tables;

select sum(population) from country;

select  continent,  count(name) from  country group by  continent;

select continent, count(name) from country where indepyear>1950 group by continent;

-- where me sirf vahi data filter hoga jo aapki physically table me presenet hoga
-- ager table me column ni he to filter ke iliye  having  function k use kiya jata he 
-- And having  always  group by ke ath use hota he 
-- group by ke sath filter function use me le sakte he 

select continent, count(name) from country
group by  continent having  count(name)>30;

  select continent, sum(population) from country group by  continent;
  
  select continent, sum(population) from country group by  continent
  having sum(population)>30401150;
  
  select indepyear, count(name)  from country where indepyear > 1930 group by indepyear
  having count(name);
  
  select indepyear, count(name)  from country where indepyear > 1930 group by indepyear
  having count(name)>2;
  
  -- uniqu to get  goverment from  and the total number of country each goverment column where the total number iff country should be  greater than 20
   -- where  the country should be than 30
   -- get the number of countrys   and the regions and total population where lifeexpectancy  should be   greater than 38  and th popultaion each in each continent should be greater than 300000
   
   
   select governmentform , count(name)  from country  group by   governmentform having count(name)>20;
   
  select governmentform , count(name)  from country  where capital > 30 group by governmentform;
  
  select continent , count(name), count(region), sum(population)
  from country where lifeexpectancy > 38 group by  continent having sum(population)>30;
  
  
  
  
  
  
   
      