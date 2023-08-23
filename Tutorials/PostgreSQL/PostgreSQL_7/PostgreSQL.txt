select *
from actor a 
order by first_name,last_name;

select *
from actor 
where first_name like 'A%'
order by first_name , last_name;

select *
from actor a 
order by first_name desc,last_name desc;

select *
from actor a
order by last_name desc,first_name desc;

select *
from actor a 
order by first_name desc, last_name;

select *
from actor a 
order by mod(actor_id,10);
