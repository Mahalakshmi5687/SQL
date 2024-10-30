use empDB
GO

--without parameters
alter function NoParameters()
	returns int
	as
		begin
			return (select avg(salary) from employee)
		end
select dbo.NoParameters()

select * from employee where salary > dbo.NoParameters()

select * from employee

--with parameters
create function fullName(@firstName varchar(50), @lastName varchar(50))
	returns varchar(200)
	as
		begin
			return (select @firstName+space(2)+@lastName)
		end
select dbo.fullName('Joe','DUe') as FullName