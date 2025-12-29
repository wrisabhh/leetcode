SELECT
    user_id,
    MAX(time_stamp) AS last_stamp
FROM Logins
WHERE time_stamp >= DATE '2020-01-01'
  AND time_stamp < DATE '2021-01-01'
GROUP BY user_id;
