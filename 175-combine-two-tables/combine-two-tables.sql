/* Write your PL/SQL query statement below */
select firstName,lastName, city, state
from person p
left join Address A on A.personid= P.personId