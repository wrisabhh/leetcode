/* Write your PL/SQL query statement below */

SELECT w.id AS Id
FROM Weather w INNER JOIN Weather o ON 1 = w.recordDate - o.recordDate
WHERE o.temperature < w.temperature