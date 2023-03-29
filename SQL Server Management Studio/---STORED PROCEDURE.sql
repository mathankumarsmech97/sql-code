Select * from EMP04

Exec EMP04_PROC

Create Proc EMP04_PROC
As 
	Begin
	Select Salary From EMP04
	End

Create Proc @Sal int
Exec EMP04_PROC
