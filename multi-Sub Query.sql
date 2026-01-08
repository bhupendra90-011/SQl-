
use sakila;

-- multi Sub Query
-- 0.99, 5.99

 select * from payment where amount not in (select amount from payment where payment_id=3 or payment_id=2);
-- 0.99, 5.99, 9.99

 select * from payment where amount <any (select amount payment where payment_id=3 or payment_id=2);
-- 0.99, 5.99

select * from payment where amount <all (select amount from
payment where payment_id=3 or payment_id=2);

select * from payment where month(payment_date) in (select month(payment_date) from payment 
where payment_id=3 or payment_id=2);