select max(salary * months) ,count(name)
from employee
where (salary * months) = (
select max(salary * months) as earngins
from employee
    )