select concat(name, '(', left(occupation,1), ')')
from OCCUPATIONs
order by name, substring(occupation, 1, 1);

select concat('There are a total of ',  ' ', count(occupation),' ', lower(occupation), 's.')
from OCCUPATIONS
group by occupation
order by count(occupation), occupation 