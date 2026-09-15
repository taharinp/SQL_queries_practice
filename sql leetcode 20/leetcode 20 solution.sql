create database test1;
use test1;


create table world(name varchar(59) primary key,
continent varchar(40) not null,
area int not null,
population int not null,
gdp bigint not null);

desc world;

insert into world values("Afghanistan" ," Asia " ,652230 , 25500100 ,20343000000 ),
("Albania", " Europe" , 28748 , 2831741 ,12960000000 ),
(" Algeria "," Africa ", 2381741 ,37100000 ,188681000000 ),
("Andorra" , " Europe" , 468 , 78115 , 3712000000),
(" Angola ", "Africa ", 1246700 , 20609294 ,100990000000);

select name,population,area from world
where area >=3000000 or population >=25000000;

create table customer (id  int primary key,
name varchar (70),
 referee_id  int);
 
 desc customer;

insert into customer values(1 ,"Will" , null ),
 (2 , "Jane ",null) ,
 (3 , " Alex ", 2 ),
 (4 , "Bill ", null ),
 (5 , "Zack ", 1 ),
 (6 , "Mark" , 2);
select name from customer
where referee_id !=2 or referee_id is null;



#3
create table views(article_id int,
author_id int,
viewer_id int,
view_date date);

desc views;

insert into views values(1 , 3 , 5 , "2019-08-01"),
( 1 , 3 , 6 , "2019-08-02" ),
( 2 , 7 , 7 , "2019-08-01" ),
( 2 , 7 , 6 , "2019-08-02" ),
( 4 , 7 , 1 , "2019-07-22"),
( 3 , 4 , 4 , "2019-07-21"),
( 3 , 4 , 4 , "2019-07-21");

select *from views
where author_id=viewer_id;

select author_id from views
where author_id=viewer_id
order by author_id;


create table product(p_id Varchar(50) Primary Key,
Product_name Varchar(50) Not Null,
Manufacture Varchar(50) Not Null,
Price int Not Null);


insert into product values("P001"," Moisturiser"," XYZ", 100),
("P002"," Sanitizer"," LAC ",50),
("P003 ","Bath Soap", "COP", 150),
("P004 ","Shampoo"," TAP", 200),
("P005", "Lens Solution","COP", 150);

select *from product
where price between 100 and 200;


select sum(price) total_price from product;


update product
set price=price*2
where product_name="Lens Solution";

select * from product;
UPDATE product
SET price = price - 10
WHERE product_name = "Sanitizer"
   OR product_name = "Bath soap";
   
   
   
   create table mother(Mid int Primary Key auto_increment,
Mname Varchar(50) Not null);


insert into mother(mname) values ("Kajol"),( "Madhuri"),(" Alia");
desc mother;

insert into baby(mid,bname) values (1,"Nysa"),( 1,"Yug"),(2," Aryan"),(2,"Ryan"),(3,"raha");

select *from baby;


create table baby(bid int Primary key auto_increment,
bname Varchar(50) Not null,
mid int,
Foreign key(Mid) references mother(Mid));


select* from product;
select* from mother left join baby
on mother.mid=baby.mid;

select m.mname,b.bname from mother m left join baby b
on m.mid=b.mid;

#16
select *from product where product_name like "s%";
select *from product where product_name like "%r";
select *from product where product_name like "s%o";

create view mother_view as select *from mother;

select *from views
where view_date <=curdate() and view_date >="2019-05-01";

select hour("14:23");




