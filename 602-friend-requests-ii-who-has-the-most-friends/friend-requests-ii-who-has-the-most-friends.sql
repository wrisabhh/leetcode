/* Write your PL/SQL query statement below */
SELECT *
  FROM (SELECT CASE n
                 WHEN 1
                   THEN least(requester_id, accepter_id)
                 ELSE greatest(requester_id, accepter_id)
               END AS id
             , count(1) AS num
          FROM requestaccepted
          CROSS JOIN (SELECT 1 AS n FROM dual UNION ALL
                      SELECT 2 AS n FROM dual) duplicator
         WHERE accept_date IS NOT NULL
         GROUP BY CASE n
                    WHEN 1
                      THEN least(requester_id, accepter_id)
                    ELSE greatest(requester_id, accepter_id)
                  END
         ORDER BY count(1) DESC)
 WHERE rownum = 1;