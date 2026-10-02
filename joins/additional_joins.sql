#addition joins
#left joins excluding inner join player and only plays cricket
select cricket.cname as cricket_only from cricket left join football
on cricket.cname=football.fname
where football.fid is null;


#right joins excluding inner join player and only plays football
select football.fname as football_only from cricket right join football
on cricket.cname=football.fname
where cricket.cname is null;

#full join excluding inner join -player only plays cricte and football
select cricket.cname as cricket_only from cricket left join football
on cricket.cname=football.fname
where football.fid is null
union

select football.fname as football_only from cricket right join football
on cricket.cname=football.fname
where cricket.cname is null;