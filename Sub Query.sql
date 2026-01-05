use sakila;

select amount  from payment where payment_id  = 5;

select * from payment where amount=  9.99;

-- () <= nested query

select payment_id ,amount from payment
where amount in(select amount from payment where payment_id=2 or payment_id=3);

select payment_id,amount from payment
where amount!=(select amount from payment where payment_id=23);

select month(payment_date)  from payment where payment_id=6;


select * from payment 
where month(payment_date)=(select month(payment_date)  from payment where payment_id=6); 

-- get  all the columns  where  the staff surving the customers  should be the same payment_id =7

select * from payment where staff_id=(select staff_id from payment where payment_id=7);

-- get all the payment info  where the amount same  as of the highest amount from the paymwent table 

select * from payment  where amount=(select max(amount) from payment);

-- get the amount and total amount -- Write an SQL query to display each payment amount and the number of payments for that amount 
-- where the payment amount is greater than the amount paid for rental ID 1725.

select amount from payment where rental_id= 1725;
select amount,count(amount) from payment where amount<(select amount from payment where rental_id= 1725)
group by amount;

-- get the month total month of spend only for those coustomers whose months  of payment< customer_id 1 and payment_id t;


select month (payment_date) from payment where customer_id=1 and payment_id=3;

-- single row subquery (nested query => return 1 row only)

select month (payment_Date), sum(amount) from payment
where month (payment_date)>(select month (payment_date) from payment
where customer_id=1 and payment_id=3)
group by month (payment_date);

-- muloti row subQuery 