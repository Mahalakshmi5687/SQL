use empDB
GO

--without parameters
create PROCEDURE dbo.uspGetEmpDetails --create PROC dbo.uspGetEmpDetails
AS
SELECT * from Employee
GO

EXEC dbo.uspGetEmpDetails --exec is not mandatory

--with parameter
create procedure dbo.uspGetDeptDetail

@DeptNo nvarchar(30)-- to prevent error without passing parameter value @DeptNo nvarchar(30)=null. we can explicitly assign a null value
AS
SELECT * from
Employee
where dept_no = @DeptNo
GO

Exec dbo.uspGetDeptDetail @DeptNo=30

--with multiple parameters
create procedure dbo.uspGetDetailFromEmployee

@DeptNo nvarchar(30)=null,
@FirstName nvarchar(60)=null
AS
SELECT * from
Employee
where dept_no = @DeptNo
and first_name = @FirstName
GO

Exec dbo.uspGetDetailFromEmployee @DeptNo=30, @FirstName='Ram'

--with out(output) keyword
create procedure dbo.uspGetCount
@Deptno nvarchar(30), @Count int out
AS
select @Count=count(*)
from Employee
where dept_no=@Deptno

Declare @Count int
Exec dbo.uspGetCount @Deptno=30, @Count=@Count out
select @count as CountResult

--with try catch (exception handling)
create procedure dbo.uspTryCatchTest
AS
BEGIN TRY
	SELECT 1/0
END TRY
BEGIN CATCH
	SELECT ERROR_NUMBER() AS ErrorNumber
	,ERROR_SEVERITY() AS ErrorSeverity
	,ERROR_STATE() AS ErrorState
	,ERROR_PROCEDURE() AS ErrorProcedure
	,ERROR_LINE() AS ErrorLine
	,ERROR_MESSAGE() AS ErrorMessage;
END CATCH

Exec dbo.uspTryCatchTest