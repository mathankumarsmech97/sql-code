declare @Val as int=39
Select
case
when @val Between 0 and 10 then 'Value is Between 0 to 10' 
when @val Between 10 and 20 then 'Value is Between 10 to 20' 
when @val Between 20 and 30 then 'Value is Between 20 to 30' 
when @val>30 then 'Greater then 30'
End Result

--SELECT OrderID, Quantity,
--CASE
--    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
--    WHEN Quantity = 30 THEN 'The quantity is 30'
--    ELSE 'The quantity is under 30'
--END AS QuantityText
--FROM OrderDetails;

--SELECT CustomerName, City, Country
--FROM Customers
--ORDER BY
--(CASE
--    WHEN City IS NULL THEN Country
--    ELSE City
--END);
