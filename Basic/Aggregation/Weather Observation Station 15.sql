select round(long_w,4)
from station
where lat_n = ( select lat_n
                        from station
                        where lat_n < 137.2345
                        order by 1 desc
                        limit 1
                        )