select * from actor_cp2;
insert into actor_cp2 values(6,'bittu');

-- autocommit ==> enable
set @@autocommit=1;
select @@autocommit;
insert into actor_cp2 values(7,'testoo');
rollback;
select * from  actor_cp2;
commit;

-- in case if you ran any dml operations or right down  transaction word 
-- when my trabsaction automatically ==> age me kisi bhi commit or rollback staemnt used 
-- and in case in  ddl operations  and dcl 
-- previous  statement per jane le ;liye rollback  ka use kiya jata he 

start transaction;
insert into actor_cp2 values(11,'amazon');
commit;
select * from actor_cp2;

start transaction;
insert into actor_cp2 values(12,'flipcart');
commit;
select * from actor_cp2;

 

start transaction;
insert into actor_cp2 values(16,'abcsd');
insert into actor_cp2 values(17,'ammnh');
delete  from actor_cp2 where actor_id in (2,3);
rollback;
select * from actor_cp2;


start transaction;
insert into actor_cp2 values(18,'raj ');
insert into actor_cp2 values(19,'heena');
savepoint db_actor_cp2_svp1;
delete  from actor_cp2 where actor_id in (3);
rollback to db_actor_cp2_svp1;
select * from actor_cp2;


-- what is dbms vs rdbms 
-- what is myysql
-- what is normalization ==> 1nf, 2nf, 3nf 
-- candidate key 
-- super key    
--   