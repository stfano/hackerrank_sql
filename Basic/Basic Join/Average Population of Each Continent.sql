select a.continent, floor(avg(b.population))
from country a
join city b on a.code = b.countrycode
group by 1