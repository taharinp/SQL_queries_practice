#create database flights_info
drop database flights_info;
create database flights_info;
use flights_info;


create table flights(d int primary key auto_increment,
					origin varchar(70)not null,
                    destination varchar(80) not null,
                    duration int not null);

INSERT INTO flights (origin, destination, duration)
VALUES
('new york', 'london', 45),
('shanghai', 'paris', 760),
('istanbul', 'tokyo', 700),
('new york', 'paris', 435),
('moscow', 'paris', 245),
('lima', 'new york', 455);

SELECT * FROM flights;



select origin,destination from flights;

#filter rows where clause

SELECT * FROM flights where d=1; 

#comparison operator
select * from flights where duration>500;
select * from flights where duration=455;
select * from flights where duration!=500;
select * from flights where duration<500;


#airthmetic +,-,*,/,%

#increase flights duration by 20

update flights 
set duration =duration-20
where duration>500;

SELECT * FROM flights;

SELECT * FROM flights where duration >500 and destination="paris";
SELECT * FROM flights where duration >500 or destination="paris";





#order by -sorting data by asc desc
select *from flights order by duration;
select *from flights order by d;

select *from flights order by duration desc;

#longest flight
select *from flights order by duration asc limit 1;

#highest and 2nd highest
select *from flights order by duration asc limit 2;

#2nd and third

select *from flights order by duration desc limit 1,2;

select *from flights order by duration desc limit 2 offset 1;

#distinct unique values from col

select distinct origin from flights;

#aggregate function
