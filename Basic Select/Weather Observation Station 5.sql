with a as 
(select city, length(city)
from station
order by 2, 1
limit 1
 )
 , b as 
(select city, length(city)
from station
order by 2 desc , 1
limit 1
 )
 
 select city, length(city)
 from a 
 union 
  select city, length(city)
 from b
 


