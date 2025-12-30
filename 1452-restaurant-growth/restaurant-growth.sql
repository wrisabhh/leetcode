/* Write your PL/SQL query statement below */
SELECT to_char(visited_on, 'YYYY-MM-DD') visited_on
     , amount
     , average_amount
  FROM (SELECT visited_on
             , SUM(SUM(amount))
                 OVER (ORDER BY visited_on
                       ROWS BETWEEN 6 PRECEDING  AND CURRENT ROW)
                 AS amount
             , round(AVG(SUM(amount))
                       OVER (ORDER BY visited_on
                             ROWS BETWEEN 6 PRECEDING  AND CURRENT ROW)
                    ,2)
                 AS average_amount
             , MIN(visited_on) OVER () min_visited_on
          FROM customer c
         GROUP BY visited_on) foo
 WHERE visited_on >= min_visited_on + 6
 ORDER BY visited_on;