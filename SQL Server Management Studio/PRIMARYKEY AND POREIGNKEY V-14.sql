--PARENT TABLE
CREATE TABLE DEPARTMENT (DEPTNO INT PRIMARY KEY,DEPTNAME VARCHAR(40),DEPTLOCATION VARCHAR(40))

INSERT
	DEPARTMENT 
VALUES 
	(101
	,'DRILL'
	,'CHENNAI')
	,(102
	,'RAMING'
	,'BANGLURE')
	,(104
	,'FORGING'
	,'PUNE')

--CHILD TABLE

CREATE TABLE EMPLOYEE (EMPID INT,EMPNAME VARCHAR(40),SALARY MONEY,
DEPTNO INT FOREIGN KEY REFERENCES DEPARTMENT(DEPTNO))

--INSERT THE VALUE CHILD

INSERT
	EMPLOYEE 
VALUES
	(111
	,'MAX'
	,20000
	,101)
INSERT EMPLOYEE VALUES (111,'MATIX',40000,102)
INSERT EMPLOYEE VALUES (111,'META',50000,104)

--IF WE GO TO INSERT THE VALUE WITHOUT PARENT COLUMN VALUE LIKE 101,102,104 THAY HAVE 
--ONLY THAT LIMIT VALUE CAN INSERT CHILT TABLE

INSERT EMPLOYEE VALUES (111,'META',50000,105)--THIS OUT OF PARENT COLUMN NUMBER VALUE

SELECT*FROM DEPARTMENT
SELECT*FROM EMPLOYEE