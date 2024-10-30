use empDB

--conversion functions
select cast('10' as int) * 20 as CASTRESULT
		, convert(int, '10') *20 as CONVERTRESULT

select try_cast('A' as int) * 20 as CASTRESULT
		, try_convert(int, 'A0') *20 as CONVERTRESULT

--logical functions
select choose (3,'TEst','ZEsr','REst','NEst')

select choose (0,'TEst','ZEsr','REst','NEst')

select choose (5,'TEst','ZEsr','REst','NEst')

select IIF(11>10,'true','false') as RESULTTEST

--math functions
select abs(-10) as 'ABS', rand() as 'RAND', exp(4) as 'EXP', floor(4.66) as 'FLOOR', ceiling(4.33) as 'CEILING', sign(-8) as 'SIGN',
 sqrt(2.56) as 'SQRT', square(4) as 'SQUARE', power(2,3) as 'POWER', round(2.5677888,2) as 'ROUND'

 select sqrt(16)*square(4) as result

 select sqrt(16)-square(4) as result

 select abs(sqrt(16)-square(4)) as result

 select power(2,4)

 --aggregate functions
 select avg(salary) from Employee

 select * from Employee

select avg(distinct salary) from Employee

select min(salary) from Employee

select min(job) from Employee

select sum(salary) from employee

select count(*) from employee

select count(salary) from Employee

select count(distinct salary) from Employee

select max(salary) from Employee

select max(job) from Employee

--string functions
select replace('abcdefghicds','cde','xxx') as 'REPLACE', substring('abcdef', 2, 3) as SUBSTR, left('abcdef',2) as 'LEFT', right('abcdef',2) as 'RIGHT'

DECLARE @d DATETIME='12/13/2024'
select format(@d,'d','en-US') as 'US ENGLISH'
	, format(@d,'d','en-gb') as 'GREAT BRITAIN ENGLISH'
	, format(@d,'d','de-de') as 'GERMAN'

select ltrim('    abc     ')

select rtrim('    abc     ')

select lower('ABD')

select upper('abc')

--date functions
select sysdatetime() as 'SYSDATETIME', current_timestamp as 'TIMESTAMP', datepart(year,'12-DEC-2024') as 'DATEPART',
datediff(mm, '12/31/2015', '10/23/2016') as 'DATEDIFF', dateadd(mm, 2, '12/31/2015') as 'DATEADD'

select datepart(mm, '12-sep-2017')

select dateadd(mm,2,'12/31/2015')--adds two months

select * from emp

insert into emp values(108, 'Manish','sai','Chennai')


--custom functions
--groupby is used with aggregate functions
select employeeID, address, count(*) from emp
group by Address, employeeID


select address, count(*) from emp
group by Address

select * from Employee

select job, count(*) from employee
group by job

--having clause
--we cannot use where clause with aggregate functions
--if it is individually records we can use where clause
--if it is summarized records we cannot use where clause instead we can use having clause
--having clause is used with group by clause in which group by summarizes the records

select job, count(*) from employee
group by job
having min(salary) >20000
