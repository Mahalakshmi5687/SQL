 Create Database Test1

 use Test1

 Create table TestTable
 (
	emp_id int,
	last_name varchar(50) not null,
	first_name varchar(50) not null,
 )

 alter table TestTable add age int

 alter table TestTable drop column age

 alter table TestTable alter column emp_id char(10)

 drop table TestTable