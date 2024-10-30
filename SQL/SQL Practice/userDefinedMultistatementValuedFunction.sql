use empDB
GO

CREATE FUNCTION fn_GetEmployeeInfo(@DeptID INTEGER)
RETURNS @retGetEmployeeInfo TABLE
(
	EmployeeID int primary key not null,
	FirstName nvarchar(225) not null,
	LastName nvarchar(225) not null,
	Deptno int not null
)
AS
BEGIN
INSERT @retGetEmployeeInfo
select emp_id, first_name, last_name, dept_no from dbo.Employee
where dept_no = @DeptID

RETURN
END;
GO 

select * from fn_GetEmployeeInfo(10)