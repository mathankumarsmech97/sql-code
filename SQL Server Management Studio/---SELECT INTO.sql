--Select data from one table to another table all called backup
Select * Into EmployeeBackup from EMP04
Select*from EmployeeBackup
Select*from EMP04

--Select the table  from one data base from other data base table backup or copy purpose
Select* Into MyCLASS.dbo.EmployeeBackup from EMP04
drop table EmployeeBackup

--Copy the selected column one table to new table 
Select EPID Into EmployeeBackup123 from EMP04

select * Into EmployeeBackup 
from EMP04 
where EPNAME='BATMAN'
Select*from EmployeeBackup
Select*from EMP04

--To jion two tables backup the table

select * into EmployeeBackup
from EMP04
inner join DEPARTMENT on EMP04.EPID=DEPARTMENT.DEPTNO

--create the table whose Column and data type match with Exists table
Select * into EmployeeBackup from EMP04 where 1<>1

--you con't use Select Into Statment in Select data from Exists
select * Into EmployeeBackup select*from EMP04--ERROR

--you can use Insert Into Statment in Select data from Exists
Insert Into EmployeeBackup select*from EMP04

--only specific column copy 
Insert Into EmployeeBackuP (EPNAME,SALARY) select EPNAME,SALARY from EMP04


Select*from EmployeeBackup

delete from EmployeeBackup

drop table EmployeeBackup 

truncate table EmployeeBackup--delete data