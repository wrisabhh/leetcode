/* Write your PL/SQL query statement below */
-- Write your SQL query statement below
select s1.product_id, s1.year as first_year, s1.quantity, s1.price
from Sales s1
where s1.year <= all
(
    select s2.year
    from Sales s2
    where s1.product_id = s2.product_id
)