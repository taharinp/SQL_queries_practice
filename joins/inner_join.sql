create database joins;
use joins;
 create table cricket(cid int primary key auto_increment,
                     cname varchar(50) not null);
                     desc cricket;
                     
create table football(fid int primary key auto_increment,
                     fname varchar(50) not null);
                     desc football;
                     
insert into cricket(cname) values ("virat"),("dhoni"),("rohit"),("abhi"),("hardik");
select *from cricket;

insert into football(fname) values ("virat"),("dhoni"),("rohit"),("ronaldo"),("messi");
select *from football;
                     
                     
#display who plays cricket as well as football
#most common join is innner join

select *from cricket inner join football 
 on cricket.cname=football.fname;



#without id
select cricket.cname as c_f_player from cricket inner join football 
 on cricket.cname=football.fname;
















                     