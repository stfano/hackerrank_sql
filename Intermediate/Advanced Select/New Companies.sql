SELECT 
    c.company_code, 
    c.founder, 
    count(distinct l.lead_manager_code),
    count(distinct s.senior_manager_code),
    count(distinct m.manager_code),
    count(distinct e.employee_code)
from company c
left join Lead_Manager l on c.company_code = l.company_code
left join Senior_Manager s on c.company_code = s.company_code
left join Manager m on c.company_code = m.company_code
left join Employee e on c.company_code = e.company_code
group by 1,2
order by 1