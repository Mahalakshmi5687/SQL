use Test1

create table emp
(
	emp_id int primary key,
	l_name varchar(50) not null,
	f_name varchar(50) not null
	--we cannot use this if there are more than one primarykey
)

create table emp1
(
	emp_id int,
	l_name varchar(50) not null,
	f_name varchar(50) not null,
	CONSTRAINT emp_pk primary key (emp_id)
	--to generate user defined id for key
	--used when there are more than one primary key
)

create table emp2
(
	l_name varchar(50) not null,
	f_name varchar(50) not null,
	salry money,
	CONSTRAINT emp_pk1 primary key (l_name, f_name)
)

create table emp4
(
	emp_id int not null,
	l_name varchar(50) not null,
	f_name varchar(50) not null
)

alter table emp4
add constraint emp_primaryKey Primary key(emp_id)