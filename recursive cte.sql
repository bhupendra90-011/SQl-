-- recursive cte
-- union ==>> union give a unique value

use sakila;
select actor_id, first_name from sakila.actor where actor_id between 1 and 4
union all
select first_name, actor_id from sakila.actor where actor_id between 3 and 5;

with cte as
(select 10 as n)
select * from cte ;


with recursive cte as (
select 10 as num
-- assinging values to this num column (starting point)
union all
select num+1 from cte
-- cte call karna
where num<15
)
-- terminating condition (stop point)
select * from cte;


