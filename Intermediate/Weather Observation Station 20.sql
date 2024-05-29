select round(lat_n, 4)
from (
SELECT LAT_N
       , PERCENT_RANK() OVER (ORDER BY LAT_N) p_rn
FROM STATION) t
where p_rn = 0.5