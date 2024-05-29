select contests.contest_id, 
        contests.hacker_id, 
        contests.name, 
        sum(total_submissions), 
        sum(total_accepted_submissions), 
        sum(total_views), 
        sum(total_unique_views)
from contests
join colleges on contests.contest_id = colleges.contest_id
join challenges on colleges.college_id = challenges.college_id
left join (select challenge_id, 
           sum(total_views) as total_views, 
           sum(total_unique_views) as total_unique_views
           from view_stats 
           group by challenge_id) vs 
           on challenges.challenge_id = vs.challenge_id 
left join (select challenge_id, 
            sum(total_submissions) as total_submissions, 
           sum(total_accepted_submissions) as total_accepted_submissions 
           from submission_stats group by challenge_id) ss 
           on challenges.challenge_id = ss.challenge_id
group by contests.contest_id, contests.hacker_id, contests.name
having sum(total_submissions)!=0 or
       sum(total_accepted_submissions)!=0 or
       sum(total_views)!=0 or
       sum(total_unique_views)!=0
order by contest_id;