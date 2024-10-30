create table emp
(
	EmployeeID int not null,
	FirstName varchar(20),
	LastName varchar(20),
	Address varchar(20)
)

ALTER TABLE emp
ADD CONSTRAINT PK_EmployeeID PRIMARY KEY (EmployeeID)

insert into emp values(101, 'Shanthi', 'Dutt', 'Chennai')

insert into emp values(102, 'Mahavir', 'Phogat', 'Mumbai')

insert into emp values(103, 'Mary', 'Kom', 'Hyderabad')

insert into emp values(104, 'Tom', 'Hardy', 'Kolkata')

insert into emp values(105, 'Shreya', 'sravant', 'Vizag')

insert into emp values(106, 'Riya', 'Lalvani','')

insert into emp values(107, 'Prashanth', 'Singh','Bengaluru')

update emp set Address=NULL where EmployeeID=106

select * from emp

create table Orders
(
	OrderID int not null,
	EmployeeID int,
	OrderDate date
)

insert into Orders values(1, 104, '2019-09-08')

insert into Orders values(1, 104, '2019-10-08')

insert into Orders values(1, 104, '2019-11-08')

insert into Orders values(1, 104, '2019-12-08')

insert into Orders values(1, 104, '2019-11-09')

select * from Orders

update Orders set OrderID=2, EmployeeID=105 where OrderDate='2019-10-08'

update Orders set OrderID=3, EmployeeID=106 where OrderDate='2019-11-08'

update Orders set OrderID=4, EmployeeID=107 where OrderDate='2019-12-08'

update Orders set OrderID=5, EmployeeID=NULL where OrderDate='2019-11-09'

ALTER TABLE Orders
ADD CONSTRAINT PK_OrderID PRIMARY KEY (OrderID)

--inner join 
--in inner join no need of alias
select emp.EmployeeID, orders.OrderID, orders.OrderDate
from emp
inner join orders
on emp.EmployeeID = orders.EmployeeID
order by emp.EmployeeID

select emp.EmployeeID, orders.OrderID, orders.OrderDate
from emp
inner join orders
on emp.EmployeeID = orders.EmployeeID
where emp.EmployeeID>105
order by emp.EmployeeID

--older method
select emp.EmployeeID, Orders.OrderID, Orders.OrderDate
from emp,orders
where emp.EmployeeID=orders.EmployeeID
order by emp.EmployeeID desc

--self join
--in self join alias is mandatory because we are doing join by self
select e1.EmployeeID, e2.LastName, e2.FirstName
from emp e1
inner join emp e2
on e1.EmployeeID=e2.EmployeeID
order by e1.EmployeeID