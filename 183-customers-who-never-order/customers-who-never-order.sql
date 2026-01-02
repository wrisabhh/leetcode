select name as customers
FROM Customers c
left JOIN Orders o
ON c.id = o.customerId
WHERE o.customerId IS NULL
