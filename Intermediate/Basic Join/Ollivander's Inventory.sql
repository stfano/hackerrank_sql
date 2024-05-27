select w.id, p.age, w.coins_needed, w.power
from 
(select code, min(coins_needed) as min_coins, power
from wands
group by 1, 3) as w1
left join wands w on w1.min_coins = w.coins_needed and w1.code = w.code
left join wands_property p on w.code = p.code
where p.is_evil = 0
order by 4 desc, 2 desc