CREATE TABLE DEMODATAW3(COUSTOMERID INT ,COUSTOMERNAME VARCHAR(30),CONTACTNAME VARCHAR(30),CUADDRESS VARCHAR(40),CITY VARCHAR(20),POSTCODE INT,COUNTRY VARCHAR(20))

INSERT INTO DEMODATAW3 VALUES (1,'JOSH','JOSHUP',34, 'A',613003,'INDIA'),(2,'ARUN','ARUNJOSHUP',35, 'B',613004,'INDIA'),(3,'JOSH','JOSHUP',34, 'A',613003,'INDIA'),(4,'JOSH','JOSHUP',34, 'A',613003,'INDIA'),
(5,'JOSH','JOSHUP',34, 'A',613003,'INDIA')

UPDATE DEMODATAW3 SET COUNTRY='USA' WHERE COUSTOMERID=3

UPDATE DEMODATAW3 SET COUNTRY='BRAZILL' WHERE COUSTOMERID=4

UPDATE DEMODATAW3 SET COUNTRY='MONGOLIYA' WHERE COUSTOMERID=2


SELECT DISTINCT COUNTRY,CUADDRESS FROM DEMODATAW3
SELECT CITY FROM DEMODATAW3 ORDER BY CITY


SELECT*FROM DEMODATAW3