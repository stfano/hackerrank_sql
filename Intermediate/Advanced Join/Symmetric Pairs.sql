select f1.x, f1.y
from functions f1
join functions f2 on f1.x = f2.y and f1.y = f2.x
group by f1.x, f2.x
having count(*) > 3 or f1.x < f1.y
order by f1.x