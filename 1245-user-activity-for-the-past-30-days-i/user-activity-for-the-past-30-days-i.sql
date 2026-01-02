/* Write your PL/SQL query statement below */
select TO_CHAR(activity_date, 'YYYY-MM-DD') AS day, count(distinct user_id) as active_users
from activity 
where activity_date between '2019-06-28' AND '2019-07-27'
group by activity_date