--Subqueries.
Select * from OrderDetails
Where Price=(Select Max(Price) From OrderDetails)


Select ProductName,Price from OrderDetails Where Price=(Select Max(Price) from OrderDetails
Where Price<(Select Max(Price) From OrderDetails))





Select * From Customers C left join Orders O On C.CustomerId=O.CustomerId Left Join OrderDetails Od ON O.OrderId=Od.OrderId Having ( Price=(Select Max(Price) from OrderDetails
Where Price<(Select Max(Price) From OrderDetails))



--Corelated Sub Queriys


SELECT * FROM Customers
SELECT*FROM Orders
SELECT * FROM OrderDetails
SELECT*FROM CustomerAddress