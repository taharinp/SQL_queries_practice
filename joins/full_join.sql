#full join
select *from cricket left join football
on cricket.cname=football.fname
union
select *from cricket right join football
on cricket.cname=football.fname;