create database triggersP

use triggersP
GO

--DML Triggers

create table Employee
(
	ID int primary key,
	FirstName varchar(20),
	LastName varchar(20),
	BirthDate date,
	MaritualStatus char(1),
	Income int,
	Education varchar(20)
)

insert into Employee values(1, 'Jon','Yang','2001-08-29','M',95894,'Bachelors')

insert into Employee values(2, 'Christy','Zhu','2000-09-10','M',327932,'Bachelors')

insert into Employee values(3, 'Sam','Zam','1999-10-23','M',759339,'Bachelors')

create table employee_audit
(
	ID int,
	inserted_by varchar(100)
)
GO

create trigger TRG_insert_Audit
on employee
for insert
as
begin
	declare @ID int
	select @ID=ID from inserted
	insert into employee_audit(ID,inserted_by)
	values(@ID, ORIGINAL_LOGIN())

	print 'insert trigger executed'
end
GO

select * from Employee

select * from employee_audit

create trigger TRG_Delete_Rule
on Employee
for delete
as
begin
	rollback
	print '*************************************************************'
	print 'You can not delete records for this table'
	print '*************************************************************'
end
GO

delete from Employee

--DDL Triggers
create trigger Trg_SampleDB
on database
for create_table
as
begin
	rollback
	print 'you are not allowed to create tables'
end

create table tbl1(ID int)

--List all triggers
select * from sys.triggers

--find the description of triggers
select * from sys.sql_modules
where Object_ID = Object_id('TRG_Delete_Rule')
Go

---Disable /Enable Triggers
disable trigger TRG_Dlete_Rule on Employee
GO

Enable trigger TRG_Delete_Rule on Employee
GO

--Remove trigger
drop trigger TRG_Delete_Rule
Go

drop trigger TRG_Insert_Audit
Go