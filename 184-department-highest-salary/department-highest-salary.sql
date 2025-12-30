/* Write your PL/SQL query statement below */
/* Write your PL/SQL query statement below */
with maxsalary as (
    select max(e.salary) as salary, e.departmentid, d.name from employee e
    join department d on e.departmentid=d.id
    group by e.departmentid, d.name
)
select m.name as department, e.name as employee, m.salary as salary 
from maxsalary m
join employee e on e.departmentid=m.departmentid
where e.salary=m.salary;