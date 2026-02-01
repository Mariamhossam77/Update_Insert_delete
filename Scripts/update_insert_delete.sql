insert into table2 values(6,'mohamed')

delete from table1 where id = 2

select * from table1

select * from table2

--update:
update t2
set t2.name = t1.name
from table2 t2 
join table1 t1
on t1.id = t2.id
where t1.name <> t2.name

--insert:

insert into table2
select * from table1 t1
where not exists(
select 1 from table2 t2
where t1.id = t2.id
)

--delete:
    -- not exists:
delete t2
from table2 t2  
where not exists(
select 1 from table1 t1 
where t1.id = t2.id
)

   --join:
delete t2
from table2 t2 
left join table1 t1
on t1.id = t2.id
where t1.id is null

   --not in:
delete t2
from table2 t2
where id not in
(select id from table1
)

