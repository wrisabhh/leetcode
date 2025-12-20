/* Write your PL/SQL query statement below */
select ee.unique_id, e.name
from employees e
left join EmployeeUNI ee on e.id=ee.id