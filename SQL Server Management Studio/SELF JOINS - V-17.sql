CREATE TABLE SELFJOIN (EMPID INT,EPNAME VARCHAR(40),SALARY MONEY,MID INT)

INSERT INTO SELFJOIN VALUES (101,'ROW-1',20000,101),(102,'ROW-2',27000,108),(103,'ROW-3',30000,109),(104,'ROW-4',20000,104),(105,'ROW-5',17000,110),(106,'ROW-6',15000,106)
--THIS INPUT GIVE THE SAME OUTPUT
SELECT*FROM SELFJOIN WHERE SALARY=SALARY--NOT CORRECT OUT PUT
--NEED Alias NAME IN TABLE
SELECT E1.EMPID,E1.EPNAME,E1.SALARY FROM SELFJOIN E1,SELFJOIN E2  WHERE E1.SALARY=E2.SALARY
AND E2.EPNAME='ROW-1'









 SELECT E1.EMPID,E1.EPNAME,E1.SALARY FROM SELFJOIN E1, SELFJOIN E2
WHERE E1.SALARY=E2.SALARY AND E2.EPNAME='ROW-1'