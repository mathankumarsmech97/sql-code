CREATE TABLE EMP04(EPID INT,EPNAME VARCHAR(30),SALARY MONEY)

CREATE PROCEDURE SPININPUT(@EPID INT,@EPNAME VARCHAR(30),@SALARY MONEY)
AS
BEGIN
INSERT INTO EMP04 VALUES (@EPID,@EPNAME,@SALARY)
END

EXECUTE SPININPUT 101,'BATMAN',100000


SELECT*FROM EMP04