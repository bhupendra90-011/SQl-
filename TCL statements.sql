-- TCL = > transactional control language 
-- Transctioanl => set of logical statement (permanent nhi he )
-- update 

use regex1;
create table actor_cp2 as select actor_id, first_name from sakila.actor
where actor_id between 1 and  5; 

select * from  actor_cp2;

-- autocommit ==> enable
set @@autocommit=0;
select @@autocommit;
insert into actor_cp2 values(7,'testoo');
select * from  actor_cp2;