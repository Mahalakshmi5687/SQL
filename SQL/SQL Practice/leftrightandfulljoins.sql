use empDB

--left join
select emp.EmployeeID, orders.OrderID, orders.OrderDate
from emp
left outer join orders--left join and left outer join both are same
on emp.EmployeeID = orders.EmployeeID
order by emp.EmployeeID

--right join
select emp.EmployeeID, orders.OrderID, orders.OrderDate
from emp
right outer join orders--right join and right outer join both are same
on emp.EmployeeID = orders.EmployeeID
order by emp.EmployeeID

--full outer join
select emp.EmployeeID, orders.OrderID, orders.OrderDate
from emp
full outer join orders
on emp.EmployeeID = orders.EmployeeID
order by emp.EmployeeID