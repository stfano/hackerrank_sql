with a as 
(   
    select s1.id,  s1.name, p1.salary as m_salary
    from students s1
    join packages p1 on s1.id = p1.id
),
b as 
(
    select f1.friend_id, p2.salary as f_salary, f1.id
    from friends f1
    join packages p2 on f1.friend_id = p2.id
)
select a.name
from a
join b on a.id = b.id
where b.f_salary > a.m_salary
order by b.f_salary
