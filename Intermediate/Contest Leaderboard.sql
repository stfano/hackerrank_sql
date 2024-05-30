select h.hacker_id, h.name, sum(s.m_score)
from hackers h
left join (
select hacker_id, challenge_id, max(score) as m_score
from submissions
group by 1,2) s on h.hacker_id = s.hacker_id
group by 1,2
having sum(m_score) > 0
order by 3 desc, 1