use empDB

create table Employee
(
	emp_id int not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	phone_num varchar(50),
	hire_date date,
	job varchar(5) not null,
	dept_no int not null,
	salary money
)

insert into Employee values(1001,'Allen','Finch','7896422496','2024-10-7','J1',10,10000)

insert into Employee values(1002,'Jay','Enrich','9742568825','2024-10-8','J2',20,20000)

select * from Employee

select top(1) * from employee

select first_name,last_name from employee

alter table Employee add loc varchar(50)

insert into Employee values(1004,'Tanu','sri','038374849394','2024-10-10','J4',30,30000,'Chennai')

select dept_no, loc as location from employee

select * from employee order by dept_no desc

select top(1) * from employee order by dept_no desc

select * from Employee where job='J1' and dept_no=10

select * from Employee where job='J2' or dept_no=10

select * from Employee where emp_id NOT IN (1002)

select * from Employee where salary between 10000 and 15000

select * from Employee where job in ('J1')

select * from Employee where first_name like 'A%l%n'

select * from Employee where first_name like 'All__'

select * from Employee where salary>=20000

select * from Employee where salary>20000

select distinct salary from Employee

select distinct dept_no from Employee

select * from Employee where loc is null -- "=" operator will not work for null comparisions

select * from Employee where loc is not null

SELECT 
    CASE(salary)
        WHEN 10000 THEN 1000000
        WHEN 20000 THEN 2000000
        ELSE 1
    END AS CalculatedValue
FROM Employee
