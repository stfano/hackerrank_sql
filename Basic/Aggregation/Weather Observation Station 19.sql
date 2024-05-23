with distance as (
select 
    min(lat_n) as a,
    max(lat_n) as b,
    min(long_w) as c,
    max(long_w) as d
from station
)

select round(sqrt(power((a-b),2)+power((c-d),2)),4)
from distance