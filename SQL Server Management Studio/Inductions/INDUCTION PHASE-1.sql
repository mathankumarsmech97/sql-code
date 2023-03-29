Create Table Customers (CustomerId Bigint identity(1001,1) not null Primary key,FirstName Varchar(50) not null,LastName varchar(50) not null ,Address1 varchar(200)null, ZipCode varchar(5) null,City Varchar(50) null,
State varchar(50) null)

Create Table Orders (OrderId Bigint identity(10001,1) Primary key not null,OrderDate datetime not null,CustomerId Bigint not null foreign key references Customers(CustomerId))

Create Table OrderDetails (OrderDetailsId Bigint identity (100001,1) not null Primary key,ProductName Varchar(50) not null,Quantity int not null,Price Decimal not null,OrderId Bigint not null foreign key references Orders (OrderId))


Insert Customers Values('Jhon','Smith','34/10 Shangai Street','101','Colorado Spring','Colorado')
Insert Customers Values('Paul','Obrin','59/113 Mathive Street','102','Fort Collins','Colorado')
Insert Customers Values('Victor','Brucewain','101/98 Lakebit Street','103','Aurora','Colorado')
Insert Customers Values('Blake','warrenbuff','57/10 Fugi Street','104','LakeWood','Colorado')
Insert Customers Values('Alisha','Gorder','78/10 GreenBug Street','105','Thornton','Colorado')

Insert Customers Values('Pete','Joe','39/27 White Street','106','Denver','Colorado')
Insert Customers Values('Ramsi','Twinsly','71/27 Rich Street','107','Denver','Colorado')
Insert Customers Values('Allan','Buff','10/45 MetroB Street','108','Denver','Colorado')
Insert Customers Values('Butler','Wriklin','39/27 Bunkmob Street','109','Denver','Colorado')
Insert Customers Values('Norman','Housman','39/27 Rio Street','110','Denver','Colorado')



Insert Orders Values ('2022-11-11 13:23:44',1001)
Insert Orders Values('2022-02-02 1:45:12',1002)
Insert Orders Values('2022-01-05 3:21:12',1003)
Insert Orders Values('2022-01-08 5:31:12',1004)
Insert Orders Values('2022-01-09 8:25:12',1005)
Insert Orders Values('2022-01-11 11:28:12',1007)
Insert Orders Values('2022-01-13 5:28:12',1008)
Insert Orders Values('2022-01-15 2:28:12',1009)
Insert Orders Values('2022-01-19 7:28:12',1010)
Insert Orders Values('2022-01-16 2:28:12',1003)
Insert Orders Values('2022-01-18 1:28:12',1005)
Insert Orders Values('2022-01-23 8:28:12',1002)
Insert Orders Values('2022-01-27 10:28:12',1001)
Insert Orders Values('2022-01-23 11:28:12',1008)
Insert Orders Values('2022-01-23 11:28:12',1009)
Insert Orders Values('2022-01-07 6:28:12',1010)
Insert Orders Values('2022-01-07 4:28:12',1007)
Insert Orders Values('2022-01-30 5:28:12',1003)
Insert Orders Values('2022-01-29 4:28:12',1004)
Insert Orders Values('2022-01-01 1:28:12',1010)



Insert OrderDetails Values('Hard Disk',2,3000,10001),('Hard Disk',3,4500,10002),('Hard Disk',1,1500,10003),('Hard Disk',4,6000,10004),('Hard Disk',2,3000,10005),
('Hard Disk',1,1500,10006),('Hard Disk',5,7500,10007),('Hard Disk',6,9000,10008),('Hard Disk',3,4500,10009)

Insert OrderDetails Values('KeyBoard',1,500,10010),('KeyBoard',2,1000,10011),('KeyBoard',3,1500,10012),('KeyBoard',4,2000,10013),('KeyBoard',2,1000,10014),
('KeyBoard',5,2500,10015),('KeyBoard',1,500,10016),('KeyBoard',6,3000,10017),('KeyBoard',3,1500,10018),('KeyBoard',4,20000,10019)

Insert OrderDetails Values('Monitor',1,1000,10020),('Monitor',4,4000,10017),('Monitor',3,3000,10001),('Monitor',2,2000,10015),('Monitor',5,5000,10003),
('Monitor',1,1000,10007),('Monitor',7,7000,10013),('Monitor',3,3000,10019),('Monitor',2,2000,10014),('Monitor',8,8000,10011)

Select
	c.FirstName,
	c.LastName
from 
	Customers c
inner join 
	Orders o 
on 
	c.CustomerId  = o.CustomerId
left join
	OrderDetails od 
on 
	od.OrderId = o.OrderId
where
	od.ProductName = 'Hard Disk' 


 --Dml
SELECT
	ORDERDATE,COUNT(ORDERID)
AS
	COUNTS 
FROM 
	ORDERS
	WHERE
		ORDERID>10001
	GROUP BY
		OrderDate
	ORDER BY
	COUNT(ORDERID)DESC  

 --Stored Procedure
ALTER
PROCEDURE 
	LeastCount
AS
BEGIN
SELECT 
		Customers.FirstName,Customers.LastName
	FROM Customers LEFT join Orders 
	ON  
		Customers.CustomerId =Orders.CustomerId
 END

EXECute LeastCount
 
--DML
Select
	c.FirstName,
	c.LastName
from 
	Customers c
inner join 
	Orders o 
on 
	c.CustomerId  = o.CustomerId
left join
	OrderDetails od 
on 
	od.OrderId = o.OrderId
where
	od.ProductName = 'Hard Disk' 





---DML

select 
	Firstname,
	LastName,
	sum(Price) as Totalprice
from
	Customers c 
inner join
	orders o
on 
	c.CustomerId = o.CustomerId 
inner join
	OrderDetails od  
on 
	o.OrderId=od.OrderId
group by 
	c.Firstname,
	c.Lastname 
order by 
	max(Price) desc

---DML Not Finished
Select 
	*
From
	Customers C
Inner Join00.
	Orders O
On
	C.CustomerId = O.CustomerId 
Inner Join
	OrderDetails Od
On
	Od.ProductName != 'Hard Disk'  



---DML

Select
	c.FirstName,
	c.LastName
from 
	Customers c
inner join 
	Orders o 
on 
	c.CustomerId  = o.CustomerId
Inner join
	OrderDetails k 
on 
	o.OrderId = k.OrderId
and
	k.ProductName='KeyBoard' 
inner join OrderDetails m
on o.OrderId = m.OrderId and  m.ProductName = 'Monitor'







Select * from Customers
Select*From Orders
Select * from OrderDetails







Sp_help Customers
sp_help Orders
Sp_help OrderDetails