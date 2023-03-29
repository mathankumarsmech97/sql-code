Use EMP04;
 

Select * From EMP04

--This qurie epid=103 have 3 or bunch of  salary value we can compare this value easy other value becaue we won't type the all bunch of values 
-- That use All , AnY,SOME
Select EPNAME,SALARY From EMP04  where SALARY >all (select SALARY from EMP04 where EPID=103 and EPID=104 and EPID=106)




Select EPNAME,SALARY From EMP04  where SALARY >all (select SALARY from EMP04 where EPID=103)

