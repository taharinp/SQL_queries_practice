use test1;
desc world;
show index from world;
select *from world ;
select name from world ;

 select *from world where name="Angola";

show index from world;
#two types
#clustered- automatically created 

#not clustered - created manualy

create table employee(id int not null,name varchar(50),
                     age int not null,
                     email varchar(40)not null);
                     
desc employee;
 
 
 insert into employee values (1,"mansi",22,"mansi@gmail.com"),
                              (2,"tanaji",23,"tanaji@gmail.com"),
                              (3,"manoj",24,"manoj@gmail.com"),
                              (4,"sudarshan",25,"sudarshan@gmail.com"),
                              (5,"deepak",26,"deepak@gmail.com");
                              
   explain select*from employee where id=5;
   show index from employee;
   create index ind_id on employee(id);                  
     explain select*from employee where id=5;                 
                     