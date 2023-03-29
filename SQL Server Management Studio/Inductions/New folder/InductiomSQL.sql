CREATE TABLE Customers (CustomerId BIGINT IDENTITY(1001,1) not null PRIMARY KEY,FirstName VARCHAR(50) NOT NULL,LastName VARCHAR(50) NOT NULL,
DateOfBirth DATE NOT NULL ,Address1 VARCHAR(200)NULL, ZipCode VARCHAR(5) NULL,
Gender DECIMAL(1,0),City VARCHAR(50) NULL,PhoneNumbr DECIMAL (10,0) NOT NULL,
States VARCHAR(50) NULL,Email Varchar(100))

CREATE TABLE Orders (OrderId BIGINT IDENTITY(10001,1) PRIMARY KEY NOT NULL,
OrderDate DATETIME NOT NULL,CustomerId BIGINT NOT NULL FOREIGN KEY REFERENCES Customers(CustomerId))

CREATE TABLE OrderDetails (OrderDetailsId BIGINT IDENTITY (100001,1) NOT NULL PRIMARY KEY,
ProductName VARCHAR(50) NOT NULL,Quantity INT NOT NULL,Price DECIMAL NOT NULL,OrderId BIGINT NOT NULL FOREIGN KEY REFERENCES Orders (OrderId))

CREATE TABLE CustomerAddress(Address1 VARCHAR(50),Address2
 VARCHAr(50),States VARCHAR(50),ZIpCode DECIMAL(5,0),ADDRESS VARCHAR(50),CustomerId BIGINT NOT NULL FOREIGN KEY  REFERENCES Customers(CustomerId))







INSERT Customers VALUES('Jhon','Smith','1991-01-01','34/10 Shangai Street','1010',1,'Colorado Spring',1234567892,'Colorado','SKS@1010')

INSERT Customers VALUES('Paul','Obrin','1993-10-01','59/113 Mathive Street','10202',1,'Fort Collins',2345674323,'Colorado','Paul@009')


INSERT Customers VALUES('Victor','Brucewain','1995-03-12','101/98 Lakebit Street','10303',1,'Aurora',8182281823,'Colorado','Victors@007')

INSERT Customers VALUES('Blake','warrenbuff','1998-11-12','57/10 Fugi Street','10404',1,'LakeWood',2374757473,'Colorado','Balke@002')

INSERT Customers VALUES('Alisha','Gorder','2000-12-21','78/10 GreenBug Street','10504',0,'Thornton',2837462834,'Colorado','@Alisf')

INSERT Customers VALUES('Pete','Joe','2000-03-19','39/27 White Street','10601',1,'Denver',3746378274,'Colorado','@Pete001')

INSERT Customers VALUES('Ramsi','Twinsly','2000-04-22','71/27 Rich Street','10711',0,'Denver',5342343612,'Colorado','@Ramsi003')

INSERT Customers VALUES('Allan','Buff','2004-09-19','10/45 MetroB Street','10823',1,'Denver',9873456287,'Colorado','@Allan004')

INSERT Customers VALUES('Butler','Wriklin','2010-03-28','39/27 Bunkmob Street','10923',1,'Denver',4738274664,'Colorado','@Butler003')

INSERT Customers VALUES('Norman','Housman','2011-11-24','39/27 Rio Street','11011',1,'Denver',6382943723,'Colorado','@Norman')



INSERT Orders VALUES ('2022-11-11 13:23:44',1001)
INSERT Orders VALUES('2022-02-02 1:45:12',1002)
INSERT Orders VALUES('2022-01-05 3:21:12',1003)
INSERT Orders VALUES('2022-01-08 5:31:12',1004)
INSERT Orders VALUES('2022-01-09 8:25:12',1005)
Insert Orders VALUES('2022-01-11 11:28:12',1007)
INSERT Orders VALUES('2022-01-13 5:28:12',1008)
INSERT Orders VALUES('2022-01-15 2:28:12',1009)
INSERT Orders VALUES('2022-01-19 7:28:12',1010)
INSERT Orders VALUES('2022-01-16 2:28:12',1003)
INSERT Orders VALUES('2022-01-18 1:28:12',1005)
INSERT Orders VALUES('2022-01-23 8:28:12',1002)
INSERT Orders VALUES('2022-01-27 10:28:12',1001)
INSERT Orders VALUES('2022-01-23 11:28:12',1008)
INSERT Orders VALUES('2022-01-23 11:28:12',1009)
INSERT Orders VALUES('2022-01-07 6:28:12',1010)
INSERT Orders VALUES('2022-01-07 4:28:12',1007)
INSERT Orders VALUES('2022-01-30 5:28:12',1003)
INSERT Orders VALUES('2022-01-29 4:28:12',1004)
INSERT Orders VALUES('2022-01-01 1:28:12',1010)



INSERT OrderDetails VALUES('Hard Disk',2,3000,10001),('Hard Disk',3,4500,10002),('Hard Disk',1,1500,10003),('Hard Disk',4,6000,10004),('Hard Disk',2,3000,10005),
('Hard Disk',1,1500,10006),('Hard Disk',5,7500,10007),('Hard Disk',6,9000,10008),('KeyBoard',3,4500,10009)

INSERT OrderDetails VALUES('KeyBoard',1,500,10010),('KeyBoard',2,1000,10011),('KeyBoard',3,1500,10012),('Hard Disk',4,2000,10013),('KeyBoard',2,1000,10014),
('KeyBoard',5,2500,10015),('KeyBoard',1,500,10016),('KeyBoard',6,3000,10017),('KeyBoard',3,1500,10018),('KeyBoard',4,20000,10019)

INSERT OrderDetails VALUES('Monitor',1,1000,10020),('Monitor',4,4000,10017),('Monitor',3,3000,10001),('Monitor',2,2000,10015),('Monitor',5,5000,10003),
('Monitor',1,1000,10007),('Monitor',7,7000,10013),('Monitor',3,3000,10019),('Monitor',2,2000,10014),('Monitor',8,8000,10011)


INSERT OrderDetails VALUES('Monitor',2,2000,10014),('Monitor',8,8000,10011)


INSERT CustomerAddress VALUE ('RRR 007 Street','MVR 23/29 Street','Kerala',11120,'RRR 007 Street')



--Find the date on which maximum number of orders created
SELECT Top 2
	ORDERDATE,COUNT(ORDERID )AS COUNTS 
FROM 
	ORDERS
	WHERE  
		ORDERID>10001
	GROUP BY
		OrderDate
	ORDER BY
	COUNT(Orderid)DESC  


 /* Stored Procedure - Get First Name and Last Name of all Customers who has
ordered at least one product */
ALTER
PROCEDURE 
	LeastCount
AS
BEGIN
SELECT 
		Customers.FirstName,Customers.LastName
	FROM Customers 
LEFT JOIN Orders ON  Customers.CustomerId =Orders.CustomerId
 END

EXECute LeastCount
 
/*DML Query - Find the customer first name and last name who ordered product
--named Hard Disk */
SELECT
	c.Fir1ON 
	c.CustomerId  = o.CustomerId
LEFT JOIN
	OrderDetails od 
ON 
	od.OrderId = o.OrderId
WHERE
	od.ProductName = 'Hard Disk' 





/* DML Query - Find customer first name and last name who ordered for maximum of
total price column */

SELECT 
	Firstname,
	LastName,
	SUM(Price) AS Totalprice
FROM
	Customers c 
inner join
	orders o
on 
	c.CustomerId = o.CustomerId 
inner join
	OrderDetails od  
ON 
	o.OrderId=od.OrderId
GROUP BY 
	c.Firstname,
	c.Lastname 
ORDER BY 
	MAX(Price) DESC

---DML Query - Find Customers who has not ordered Hard Disk
SELECT 
	*
FROM
	Customers C
INNER JOIN
	Orders O ON
	C.CustomerId = O.CustomerId 
INNER JOIN
	OrderDetails Od ON
	Od.ProductName != 'Hard Disk'  



/* DML Query - Find First name and Last name of the customers who ordered monitor
along with keyboard in the same order */

SELECT
	c.FirstName,
	c.LastName
FROM 
	Customers c
INNER JOIN 
	Orders o 
ON 
	c.CustomerId  = o.CustomerId
INNER JOIN
	OrderDetails k 
ON 
	o.OrderId = k.OrderId
AND
	k.ProductName='KeyBoard' 
INNER JOIN OrderDetails m ON o.OrderId = m.OrderId 
AND  m.ProductName = 'monitor'



/* List the customers personal information such as first name, last
name city and state along with sum of total price of all their orders */


SELECT 
	Firstname,
	LastName,
	City,
	States,
	SUM(Price)  
FROM
	Customers C 
Inner Join
	Orders O ON C.CustomerId=O.CustomerId
INNER JOIN
	OrderDetails Od ON  O.OrderId=Od.OrderId
GROUP BY 
	Firstname,
	LastName,
	City,States
ORDER BY
	SUM(Price)


/* Find Customer First Name and Last who lives in the State of
CO or Colorado */

SELECT
	FirstName,
	LastName 
FROM 
	Customers
WHERE
	States
LIKE 
	'Co%'

/*Find the Customer Id, First Name, Last Name, Address 1, Zip, City, State who
lives in the city named Denver */

SELECT
	*
FROM 
	Customers
WHERE 
	City='Denver'

	
/*Find the Customer who is called by his/her Last name O'Brin
(apostrophe) */

SELECT
	* 
FROM
	Customers 
WHERE
	LastName = 'O''Brien'

/* List Customer Ascending Order of CustomerId */

SELECT
	*
FROM
	

/*List all the customers by ascending order of First Name and
descending order of Last Name*/

SELECT
	*Customers 
ORDER BY
	CustomerId 
ASC
FROM
	customers 
ORDER BY
	firstname
ASC
---
SELECT
	*
FROM
	customers 
ORDER BY
	lastname
DESC

/*Find how many number of customers exists*/

SELECT 
	COUNT(*) AS customerexists 
FROM 
	Customers

/*Find how many number of customers lives in the state of Colorado or
CO */

SELECT 
	states,
	COUNT(*) AS customerslivescolorado
	
FROM 
	Customers
WHERE
	States ='Colorado'
GROUP BY
	States

/*UPDATE - Update the address1 field of the customer by First Name
and Last Name*/

UPDATE
	Customers 
SET 
	Address1=' 007/07 Ninja Street ' 
WHERE
	FirstName='Victor'
AND 
	LastName='BruceWain'

/*UPDATE - Update the address1 field of the customer who is called by
his/her first name &quot;John&quot; and last name &quot;Smith&quot*/


UPDATE
	Customers 
SET 
	Address1=' 13/13 MGR Street ' 
WHERE
	FirstName='Jhon'
AND 
	LastName='Smith'


/* Find the sum of the amount of all orders placed by each customer*/

SELECT 
	SUM(price) AS TotalAmout 
FROM 
	OrderDetails

/*Find the top most customer who ordered for the maximum amount in all
orders*/


SELECT TOP 1
	FirstName,
	LastName, 
	SUM(Price) AS Amout 
FROM 
	Customers C
LEFT JOIN 
	Orders O ON C.CustomerId=O.CustomerId 
LEFT JOIN 
	OrderDetails Od ON o.OrderId=Od.OrderId
GROUP BY 
	FirstName,
	LastName 
ODER BY
	SUM(Price)
DESC


/*Find the top most customer who ordered for the maximum amount in a
single order*/


SELECT TOP 1
	FirstName,
	LastName, 
	MAX(Price) ASAmout 
FROM 
	Customers C
LEFT JOIN 
	Orders O ON	C.CustomerId=O.CustomerId 
LEFT JOIN 
	OrderDetails Od ON O.OrderId=Od.OrderId
GROUP BY 
	FirstName,
	LastName 
ORDER BY
	MAX(Price)
DESC

--Find the very latest order that has been placed

SELECT TOP 
	1 
	*
FROM 
	Orders O 
INNER JOIN 
	OrderDetails Od 
ON 
	O.OrderId=Od.OrderId
ORDER BY 
	O.OrderDate 
DESC

/*Find the sum of the amount of EACH order which has product name
keyboard in it*/

SELECT
	SUM(Price) AS 
	TotalPrice,
	ProductName 
FROM
	OrderDetails 
WHERE 
	ProductName='KeyBoard'
GROUP BY
	ProductName

/*Find the order which has more than one product ordered in it
OUTPUT COLUMNS
 OrderId
 Product Name
Note: Avoid duplicate rows*/
SELECT 
	OrderId,

	Count( ProductName) AS ProductCount 
FROM
	OrderDetails
GROUP BY 
	OrderId
HAVING
	Count(*)>1

--Find the each order and its sum of ordered amount

SELECT
	OrderId,
	Sum(Price) 
	AS
	TotalAmount 
FROM 
	OrderDetails
GROUP BY 
	OrderId


--List all order by date using descending order

SELECT 
	* 
FROM 
	Orders
ORDER BY 
	OrderDate
DESC

--Find the product name that has been ordered most times
SELECT 
DISTINCT  
TOP 
	1 ProductName,
	COUNT(OrderId) AS MostOrdercount
FROM 
	OrderDetails 
GROUP BY
	ProductName
ORDER BY
	COUNT(OrderId)
DESC


--product name that been ordered least times
SELECT 
TOP 
	1 ProductName,
	COUNT(OrderId) AS LeastOrdercount
FROM 
	OrderDetails 
GROUP BY
	ProductName
ORDER BY
	COUNT(OrderId)
ASC

--Find on which day the largest number of quantity of products ordered and list down top 5 products in descending order

SELECT TOP 5
	OrderDate,
	COUNT(Od.OrderId)
AS
	NumberOfordereverdate
FROM
	Orders O 
INNER JOIN 
	OrderDetails Od ON O.OrderId=Od.OrderId
GROUP BY 
	OrderDate 
ORDER BY 
	COUNT(Od.OrderId) 
DESC

--11.	Find the First name , Last name and amount second top most customer who has order large sum of amounts

SELECT
	FirstName,
	LastName,
	SUM(Price) AS TotalAmount 
FROM
	Customers C 
INNER JOIN
	Orders O ON C.CustomerId=O.CustomerId 
INNER JOIN
	OrderDetails Od ON O.OrderId=Od.OrderId
GROUP BY
	FirstName,
	LastName 
ORDER BY
	SUM(Price) 
DESC OFFSET 1 
ROWS 
FETCH
NEXT 1 ROW ONLY


--CTE QUERY - Find the most ordered product USE CTE QUERY.

WITH CTE_OrderDetails(OrderId,ProductName)
AS
(
SELECT 
DISTINCT  
TOP 
	1 ProductName,
	COUNT(OrderId) AS MostOrdercount
FROM 
	OrderDetails 
GROUP BY
	ProductName
ORDER BY
	COUNT(OrderId)
DESC
)
Select 
	*
From 
	CTE_OrderDetails








SELECT * FROM Customers
SELECT*FROM Orders
SELECT * FROM OrderDetails
SELECT*FROM CustomerAddress












