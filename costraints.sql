use student_info;

#table level constriants:

create table student(
id int primary key,
name varchar(50)not null,
age int check(age>=6),
email varchar(50)unique,
country varchar(50) default "india");


alter table student modify id int auto_increment;
desc student;

#when constraints will come into effect -insert

insert into student(name,age,email) values("asim",21,"asim@gmail.com");
select *from student;

#primary key automatically will start from 1 by default 


