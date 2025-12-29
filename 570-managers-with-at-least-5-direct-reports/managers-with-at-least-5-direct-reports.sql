/* Write your PL/SQL query statement below */
select name from employee  where ID in (
    select managerID from employee group by managerID having count(managerID)>=5
);