# 1번 풀이

select start_date, min(end_Date)
from
( select start_date
from Projects
where start_date not in (select end_Date from Projects)) a,
( select end_Date
from Projects
where end_Date not in (select start_date from Projects)) b
where end_date > start_Date
group by start_Date
order by datediff(min(end_Date), start_date), start_date


# 2번 풀이
SELECT MIN(Start_Date), MAX(End_Date)
FROM
(
    SELECT Start_Date, End_Date, Start_Date - ROW_NUMBER() OVER(ORDER BY Start_Date) as rnk
    FROM Projects
)l
GROUP BY rnk
ORDER BY DATEDIFF(MAX(End_Date),MIN(Start_Date)), MIN(Start_Date);