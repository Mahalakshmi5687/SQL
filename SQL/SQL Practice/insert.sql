create database empDB

use empDB

create table dept1
(
	deptno int not null,
	dept_name varchar(50),
	loc varchar(50)
)

create table dept
(
	deptno int not null,
	dept_name varchar(50),
	loc varchar(50)
)

insert into dept1(deptno, dept_name, loc) values (10, 'HR', 'chennai')

insert into dept(deptno, dept_name, loc) values (10, 'TSO' ,'Mumbai')
--if we want to enter all values of columns no need of fields

Insert into dept1 (Deptno,dept_name,loc)(select * from dept where deptno<20)
