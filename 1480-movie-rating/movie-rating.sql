/* Write your PL/SQL query statement below */
/* Write your PL/SQL query statement below */
SELECT name results
FROM (SELECT name
      FROM (
            SELECT user_id
             FROM MovieRating
             GROUP BY user_id
              HAVING COUNT(*)=(SELECT MAX(COUNT(*)) FROM MovieRating GROUP BY user_id)
           ) m,Users u
       WHERE m.user_id=u.user_id
       ORDER BY name)
WHERE ROWNUM=1
UNION ALL
SELECT title
FROM( SELECT title
      FROM (
             SELECT movie_id
             FROM MovieRating
             WHERE TO_CHAR(created_at,'yyyy-mm')='2020-02'
             GROUP BY movie_id
             HAVING AVG(rating)=(SELECT MAX(AVG(rating)) FROM MovieRating WHERE TO_CHAR(created_at,'yyyy-mm')='2020-02' GROUP BY movie_id)
           ) r,movies  m
      WHERE m.movie_id=r.movie_id
      ORDER BY title
    )
WHERE ROWNUM=1;