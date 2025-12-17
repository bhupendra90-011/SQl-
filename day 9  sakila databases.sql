use sakila;
show tables;

select * from payment;

select count(*) from  payment where amount = 2.99;

select amount, count(amount) from payment group by  amount;

select  customer_id, sum(amount) from payment group  by customer_id;

select  customer_id, sum(amount) from  payment where amount>3 group  by customer_id;



-- to find out the max amount  of transacton the avg trabsaction amount tand
--  the total total transaction amount  done by each staff

select  max(amount), avg(amount), sum(amount), staff_id  from payment
group by staff_id;

select  * from payment  where customer_id%2=0;

--  get the  amount and total transaction  done  for each amount only for  the payment threw staaff id d 1 and 
 -- and the total tansaction should be greater than 30

--  total transaction -->. ye amount vahi consider kerna he 

select amount ,count(amount) from payment where staff_id =1 group by amount  having count(amount)>30;

--  find out  the numbers of  customer   serve the avg amount and the total  amount spend  
-- in each month  for  staff_id 1 or 2

select extract(month from payment_date) ,  count(customer_id),avg(amount), sum(amount)
from payment where staff_id=1 or staff_id=2
group by extract(month from payment_date);

-- --  find out  the number s of  customer   serve the avg amount and the total  amount spend  
-- in each month  and each year

select extract(year from payment_date) ,  count(customer_id),avg(amount), sum(amount)
from payment where staff_id=1 or staff_id=2
group by extract(year from payment_date);


-- order by ---->>>> data ko sort kerna  in Asending order
-- desc -->> 

select * from payment order by amount;
select * from payment order by customer_id, amount desc;



