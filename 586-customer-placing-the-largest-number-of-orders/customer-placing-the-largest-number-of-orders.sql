SELECT customer_number
FROM (
    SELECT customer_number, COUNT(*) cnt
    FROM Orders
    GROUP BY customer_number
    ORDER BY cnt DESC
)
WHERE ROWNUM = 1;
