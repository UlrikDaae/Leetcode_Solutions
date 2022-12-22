SELECT C.Name AS Customers 

FROM Customers C 

LEFT JOIN Orders O on C.Id = O.CustomerId

WHERE O.CustomerId is NULL
