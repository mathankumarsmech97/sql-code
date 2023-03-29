--USE W3Programs
--if Exists (Select * From [W3 T-1] Where CustomerID=3)
--Begin
--Delete from [W3 T-1] where CustomerID=1;
--print 'Deleted';
--End
--else
--Begin
--insert Into [W3 T-1] value CustomerID=1;
--Print 'Created';
--End
Drop table test1
if NOT EXISTS (Select * From Sysobjects Where Name='Test1')
Begin
Create table test1 (no int);
print'Created'
End

