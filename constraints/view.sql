create view cust_view as select *from customer;

select *from cust_view;
select *from customer;

#what if i delete reord from view

delete from cust_view where id=6;


#what if i drop a viwe is it also going to drop table 
#---> no
drop view cust_view;

#create a non updatable viwe -distinct ,avg,group by clause ,having clause

create view cust_view as select distinct name from customer;


select *from cust_view;



delete from cust_view where name="will";