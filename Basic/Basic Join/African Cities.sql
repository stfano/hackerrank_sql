select a.name
from city  a
join country b on a.countrycode = b.code
where b.continent = "Africa"