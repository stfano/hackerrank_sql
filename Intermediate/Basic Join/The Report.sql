select case
            when g.grade > 7 then s.name
            else null
            end as name
            , g.grade, s.marks
from students s
join grades g on s.marks >= g.min_mark and s.marks <= g.max_mark
order by g.grade desc, s.name, s.marks