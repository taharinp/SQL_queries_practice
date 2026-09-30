#createing cursor in stored procedure
#fetch record from employee table one rec at a time

use  employee;
delimiter $$
create procedure fetch_emp()
begin 

declare eid int ;
declare ename varchar(50);
declare e_dept varchar(50);
declare e_sal decimal;
declare e_mid int;

declare done int default 0;

#declare a cursor
declare emp_cursor cursor for select*from employee;

#handler when no more rows are available
declare continue handler for not found set done=1;

#open cursor 
open emp_cursor;

read_loop: loop

#fetch one row at a time

fetch emp_cursor into eid,ename,e_dept,d_sal,e_mid;

#stop when all rows are fetch 

if done=1 then
leave read_loop;
end if;

select eid,ename,e_dept,d_sal,e_mid;
end loop;
close emp_cursor;


end $$
delimiter ;