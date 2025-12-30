/* Write your PL/SQL query statement below */
SELECT
    u.user_id buyer_id,
    TO_CHAR(u.join_date, 'YYYY-MM-DD') join_date,
    COALESCE(COUNT(o.order_id), 0) orders_in_2019
FROM
    Users u LEFT OUTER JOIN Orders o ON u.user_id = o.buyer_id AND TO_CHAR(o.order_date, 'YYYY') = 2019
GROUP BY
    user_id, join_date 