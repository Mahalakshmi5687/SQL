use empDB
GO

--without parameter
alter function TopTenCustomer()
	RETURNS TABLE
	AS
		RETURN(
			select top(2) * from employee
		)

select * from dbo.TopTenCustomer()

--with parameter
create function GreatethanId(@empid int)
	RETURNS TABLE
	AS
		RETURN(
			select * from employee
			where emp_id>@empid
		)

select * from dbo.GreatethanId(1002)