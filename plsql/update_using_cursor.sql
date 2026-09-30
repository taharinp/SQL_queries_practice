CREATE DEFINER=`root`@`localhost` PROCEDURE `give_bonus`()
BEGIN
declare e_id int;
declare e_sal decimal;
declare done int default 0;
declare e_cur cursor for select emp_eid,salary from emp where eid=5;
declare continue handler for not found set done=1;
open e_cur;
bonus_loop: loop
fetch e_cur into e_id,e_sal;
if done=1 then 
leave bonus_loop;
end if;
update emp set salary=salary*1.10 where e_id=eid;
end loop;
close e_cur;



END